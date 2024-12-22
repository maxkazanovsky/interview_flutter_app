import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';
import 'package:test_birthday_app/core/utils/build_context_extension.dart';
import 'package:test_birthday_app/domain/entities/user.dart';
import 'package:test_birthday_app/domain/repositories/app_settings_repository.dart';
import 'package:test_birthday_app/domain/repositories/user_data_repository.dart';
import 'package:test_birthday_app/generated/colors.gen.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

@Injectable()
class SettingsCubit extends Cubit<SettingsState> {
  final AppSettingsRepository _appSettingsRepository;
  final UserDataRepository _userDataRepository;
  SettingsCubit(this._appSettingsRepository, this._userDataRepository) : super(SettingsState.loading()) {
    init();
  }

  void init() async {
    final userData = await _userDataRepository.getUserData();
    if (userData == null) {
      throw Exception('User data not found');
    }

    final isAppUnlocked = await _appSettingsRepository.isAppUnlocked();
    emit(SettingsState.loaded(userData: userData, isAppUnlocked: isAppUnlocked));
  }

  void rateUs() async {
    final InAppReview inAppReview = InAppReview.instance;

    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    } else {
      inAppReview.openStoreListing(appStoreId: '', microsoftStoreId: '');
    }
  }

  void unlockTheApp(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.l10n.unlock_app_title,
            style: context.textStyles.titleSmall,
          ),
          actions: [
            TextButton(
              onPressed: () async {
                _appSettingsRepository.setAppUnlocked();
                Navigator.of(context).pop();
                state.mapOrNull(loaded: (state) {
                  emit(state.copyWith(isAppUnlocked: true));
                });
              },
              child: Text(
                context.l10n.unlock_app_title_positive,
                style: context.textStyles.labelLarge?.copyWith(color: AppColors.primary),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                context.l10n.unlock_app_title_negative,
                style: context.textStyles.labelLarge?.copyWith(color: AppColors.primary),
              ),
            ),
          ],
        );
      },
    );
  }
}
