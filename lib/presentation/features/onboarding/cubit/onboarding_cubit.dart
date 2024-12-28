import 'package:camera/camera.dart' as camera;
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:test_birthday_app/core/config/setup_configuration.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/domain/entities/user.dart';
import 'package:test_birthday_app/domain/repositories/app_settings_repository.dart';
import 'package:test_birthday_app/domain/repositories/user_data_repository.dart';

part 'onboarding_cubit.freezed.dart';
part 'onboarding_state.dart';

@Injectable()
class OnboardingCubit extends Cubit<OnboardingState> {
  final UserOnboardingData _data = UserOnboardingData();
  List<camera.CameraDescription> _cameras = [];
  camera.CameraController? _cameraController;

  final UserDataRepository _userDataRepository;
  final AppSettingsRepository _appSettingsRepository;
  final AppConfig _config;

  late bool isFirstLaunch;

  OnboardingCubit(this._userDataRepository, this._appSettingsRepository, this._config)
      : super(const OnboardingState.loading());

  void init() async {
    isFirstLaunch = await _appSettingsRepository.isFirstLaunch();
    if (isFirstLaunch) {
      return emit(OnboardingState.birthday());
    }

    await initCamera();
  }

  bool get isFlipCameraAvailable => _cameras.length > 1;

  Future<void> initCamera({bool isFrontCamera = true, camera.CameraController? controller}) async {
    try {
      emit(OnboardingState.camera(
          cameraController: controller, isPreviousButtonAvailable: isFirstLaunch, isCameraLoading: true));
      _cameras = await camera.availableCameras();
      camera.CameraController cameraController;
      if (isFrontCamera) {
        cameraController = camera.CameraController(
          _cameras.firstWhere((e) => e.lensDirection == camera.CameraLensDirection.front),
          camera.ResolutionPreset.ultraHigh,
          enableAudio: false,
        );
      } else {
        cameraController = camera.CameraController(
          _cameras.firstWhere((e) => e.lensDirection == camera.CameraLensDirection.back),
          camera.ResolutionPreset.ultraHigh,
          enableAudio: false,
        );
      }

      await _cameraController?.dispose();
      _cameraController = cameraController;

      await cameraController.initialize().catchError((e) {
        debugPrint("Error initializing camera: $e");
        state.mapOrNull(camera: (state) => emit(state.copyWith(hasError: true)));
      });

      emit(
        OnboardingState.camera(
          cameraController: cameraController,
          isPreviousButtonAvailable: isFirstLaunch,
          isCameraLoading: false,
          isFrontCameraActive: isFrontCamera,
        ),
      );
    } catch (e) {
      debugPrint("Error initializing cameras: $e");
      state.mapOrNull(camera: (state) => emit(state.copyWith(hasError: true)));
    }
  }

  void flipCamera() {
    state.mapOrNull(camera: (state) async {
      if (isFlipCameraAvailable) {
        await initCamera(isFrontCamera: !state.isFrontCameraActive, controller: state.cameraController);
      }
    });
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
      if (date.year != year || date.month != month || date.day != day) {
        return context.l10n.validation_date;
      }

      final now = DateTime.now();
      if (date.isAfter(now)) {
        return context.l10n.validation_future_date;
      }

      const minAge = 18;
      const maxAge = 120;
      final age = now.year - date.year - (now.month < month || (now.month == month && now.day < day) ? 1 : 0);

      if (age < minAge) {
        return context.l10n.validation_minimum_age(minAge);
      }

      if (age > maxAge) {
        return context.l10n.validation_maximum_age(maxAge);
      }

      return null;
    } catch (e) {
      return context.l10n.validation_date;
    }
  }

  String? _validateNickname(BuildContext context) {
    final isEntered = _data.nickname.nickname != null && _data.nickname.nickname!.trim().isNotEmpty;
    if (!isEntered) {
      return context.l10n.validation_required;
    }
    final nickname = _data.nickname.nickname!.trim();
    final tooShort = nickname.length < 5;
    if (tooShort) {
      return context.l10n.validation_nickname_min_length;
    }
    final tooLong = nickname.length > 10;
    if (tooLong) {
      return context.l10n.validation_nickname_max_length;
    }

    final validUsernameRegex = RegExp(r'^[a-zA-Z0-9_.]+$');
    if (!validUsernameRegex.hasMatch(nickname)) {
      return context.l10n.validation_invalid_username;
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
      camera: (state) async {
        if (state.cameraController == null || !state.cameraController!.value.isInitialized) {
          debugPrint("Camera controller is not initialized.");
          emit(state.copyWith(hasError: true));
          return;
        }

        if (state.cameraController!.value.isTakingPicture) {
          debugPrint("Camera is already taking a picture.");
          emit(state.copyWith(hasError: true));
          return;
        }

        try {
          final image = await state.cameraController!.takePicture();

          debugPrint("Picture taken: ${image.path}");
          isFirstLaunch = false;
          _appSettingsRepository.setFirstLaunch();
          final isAppLocked = await _appSettingsRepository.isAppUnlocked();
          emit(OnboardingState.cameraPreview(image: image, showAd: !isAppLocked, adUnitId: _config.adUnitId));
        } catch (e) {
          debugPrint("Error taking picture: $e");
          emit(state.copyWith(hasError: true));
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
