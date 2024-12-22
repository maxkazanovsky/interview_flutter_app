import 'package:test_birthday_app/core/config/setup_configuration.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/domain/entities/user.dart';
import 'package:test_birthday_app/domain/repositories/app_settings_repository.dart';
import 'package:test_birthday_app/domain/repositories/user_data_repository.dart';
import 'package:camera/camera.dart' as camera;
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

@Injectable()
class OnboardingCubit extends Cubit<OnboardingState> {
  final UserOnboardingData _data = UserOnboardingData();
  List<camera.CameraDescription> _cameras = [];
  camera.CameraController? _cameraController;
  int _currentCameraIndex = 0;

  final UserDataRepository _userDataRepository;
  final AppSettingsRepository _appSettingsRepository;
  final AppConfig _config;

  late bool isFirstLaunch;

  OnboardingCubit(this._userDataRepository, this._appSettingsRepository, this._config)
      : super(const OnboardingState.loading()) {
    init();
  }

  void init() async {
    isFirstLaunch = await _appSettingsRepository.isFirstLaunch();
    if (isFirstLaunch) {
      return emit(OnboardingState.birthday());
    }

    await initCamera();
  }

  bool get isFlipCameraAvailable => _cameras.length > 1;

  Future<void> initCamera() async {
    try {
      _cameras = await camera.availableCameras();
      final cameraController = camera.CameraController(
        _cameras[_currentCameraIndex],
        camera.ResolutionPreset.low,
        enableAudio: false,
      );
      _cameraController = cameraController;
      cameraController.initialize().then((_) {
        emit(OnboardingState.camera(cameraController: cameraController, isPreviousButtonAvailable: isFirstLaunch));
      }).catchError((e) {
        debugPrint("Error initializing camera: $e");
      });
    } catch (e) {
      debugPrint("Error initializing cameras: $e");
    }
  }

  void _startCamera(int cameraIndex) {
    final cameraController = camera.CameraController(
      _cameras[cameraIndex],
      camera.ResolutionPreset.low,
      enableAudio: false,
    );
    cameraController.initialize().then((_) {
      emit(OnboardingState.camera(cameraController: cameraController, isPreviousButtonAvailable: isFirstLaunch));
    }).catchError((e) {
      debugPrint("Error initializing camera: $e");
    });
    _cameraController?.dispose();
    _cameraController = cameraController;
  }

  flipCamera() {
    if (_cameras.length > 1) {
      _currentCameraIndex = (_currentCameraIndex + 1) % _cameras.length;
      _startCamera(_currentCameraIndex);
    } else {
      debugPrint("Only one camera available");
    }
  }

  String? _validateBirthday(BuildContext context) {
    final isEntered = _data.birthday.day != null && _data.birthday.month != null && _data.birthday.year != null;
    if (!isEntered) {
      return context.l10n.validation_required;
    }
    try {
      final year = _data.birthday.year!;
      final month = _data.birthday.month!;
      final day = _data.birthday.day!;
      final date = DateTime(year, month, day);

      return date.year == year && date.month == month && date.day == day ? null : context.l10n.validation_date;
    } catch (e) {
      return context.l10n.validation_date;
    }
  }

  String? _validateNickname(BuildContext context) {
    final isEntered = _data.nickname.nickname != null && _data.nickname.nickname!.trim().isNotEmpty;
    if (!isEntered) {
      return context.l10n.validation_required;
    }
    return null;
  }

  void nextPage(BuildContext context) {
    state.mapOrNull(
      birthday: (state) {
        _data.birthday = state;
        final error = _validateBirthday(context);
        if (error == null) {
          final newState = _data.birthday.copyWith(error: null);
          _data.birthday = newState;
          emit(newState);
          return emit(_data.nickname);
        }
        emit(state.copyWith(error: error));
      },
      nickname: (state) {
        _data.nickname = state;
        final error = _validateNickname(context);
        if (error == null) {
          return emit(const OnboardingState.gender());
        }
        emit(state.copyWith(error: error));
      },
      gender: (state) async {
        _data.gender = state;
        _userDataRepository.setUserData(_data.userData);
        emit(const OnboardingState.photo());
      },
      photo: (_) async {
        await initCamera();
      },
      camera: (_) async {
        if (_cameraController == null || !_cameraController!.value.isInitialized) {
          debugPrint("Camera controller is not initialized.");
          return;
        }

        if (_cameraController!.value.isTakingPicture) {
          debugPrint("Camera is already taking a picture.");
          return;
        }

        try {
          final image = await _cameraController!.takePicture();

          debugPrint("Picture taken: ${image.path}");
          isFirstLaunch = false;
          _appSettingsRepository.setFirstLaunch();
          final isAppLocked = await _appSettingsRepository.isAppUnlocked();
          emit(OnboardingState.cameraPreview(image: image, showAd: !isAppLocked, adUnitId: _config.adUnitId));
        } catch (e) {
          debugPrint("Error taking picture: $e");
        }
      },
    );
  }

  void previousPage(BuildContext context) async {
    state.mapOrNull(
        birthday: (_) => context.pop(),
        nickname: (_) => emit(_data.birthday),
        gender: (_) => emit(_data.nickname),
        photo: (_) => emit(const OnboardingState.gender()),
        camera: (_) => emit(const OnboardingState.photo()),
        cameraPreview: (_) async {
          await initCamera();
        });
  }

  void setBirthdayDay(String day, BuildContext context) {
    state.mapOrNull(birthday: (state) {
      final newState = state.copyWith(
        day: int.tryParse(day),
      );
      _data.birthday = newState;

      emit(newState.copyWith(
        error: state.error != null ? _validateBirthday(context) : null,
      ));
    });
  }

  void setBirthdayMonth(String month, BuildContext context) {
    state.mapOrNull(birthday: (state) {
      final newState = state.copyWith(
        month: int.tryParse(month),
        error: state.error != null ? _validateBirthday(context) : null,
      );
      _data.birthday = newState;

      emit(newState.copyWith(
        error: state.error != null ? _validateBirthday(context) : null,
      ));
    });
  }

  void setBirthdayYear(String year, BuildContext context) {
    state.mapOrNull(birthday: (state) {
      final newState = state.copyWith(
        year: int.tryParse(year),
        error: state.error != null ? _validateBirthday(context) : null,
      );
      _data.birthday = newState;

      emit(newState.copyWith(
        error: state.error != null ? _validateBirthday(context) : null,
      ));
    });
  }

  void setNickname(String nickname, BuildContext context) {
    state.mapOrNull(nickname: (state) {
      final newState = state.copyWith(
        nickname: nickname,
      );
      _data.nickname = newState;
      emit(
        newState.copyWith(
          error: state.error != null ? _validateNickname(context) : null,
        ),
      );
    });
  }

  void setGender(HumanGender gender, BuildContext context) {
    state.mapOrNull(gender: (state) {
      emit(state.copyWith(gander: gender));
      nextPage(context);
    });
  }

  void closeAdvertisement() {
    state.mapOrNull(cameraPreview: (state) {
      emit(state.copyWith(showAd: false));
    });
  }

  void setAppUnlocked(bool value) {
    state.mapOrNull(cameraPreview: (state) {
      emit(state.copyWith(showAd: !value));
    });
  }

  @override
  Future<void> close() async {
    _cameraController?.dispose();
    super.close();
  }
}
