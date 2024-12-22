// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Continue`
  String get next {
    return Intl.message(
      'Continue',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Are you ready for\nyour test?`
  String get welcome_headline {
    return Intl.message(
      'Are you ready for\nyour test?',
      name: 'welcome_headline',
      desc: '',
      args: [],
    );
  }

  /// `Start now by creating your profile and connect!`
  String get welcome_subtitle {
    return Intl.message(
      'Start now by creating your profile and connect!',
      name: 'welcome_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `When’s your\nbirthday?`
  String get birthday_headline {
    return Intl.message(
      'When’s your\nbirthday?',
      name: 'birthday_headline',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get birthday_day {
    return Intl.message(
      'Day',
      name: 'birthday_day',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get birthday_month {
    return Intl.message(
      'Month',
      name: 'birthday_month',
      desc: '',
      args: [],
    );
  }

  /// `Year`
  String get birthday_year {
    return Intl.message(
      'Year',
      name: 'birthday_year',
      desc: '',
      args: [],
    );
  }

  /// `Choose your\nnickname?`
  String get nickname_headline {
    return Intl.message(
      'Choose your\nnickname?',
      name: 'nickname_headline',
      desc: '',
      args: [],
    );
  }

  /// `Which gender do\nyou identify as?`
  String get gender_headline {
    return Intl.message(
      'Which gender do\nyou identify as?',
      name: 'gender_headline',
      desc: '',
      args: [],
    );
  }

  /// `Your gender helps us find the right\nmatches for you.`
  String get gender_subtitle {
    return Intl.message(
      'Your gender helps us find the right\nmatches for you.',
      name: 'gender_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get gender_male {
    return Intl.message(
      'Male',
      name: 'gender_male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get gender_female {
    return Intl.message(
      'Female',
      name: 'gender_female',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get gender_other {
    return Intl.message(
      'Other',
      name: 'gender_other',
      desc: '',
      args: [],
    );
  }

  /// `Add a nice photo\nof yourself`
  String get photo_headline {
    return Intl.message(
      'Add a nice photo\nof yourself',
      name: 'photo_headline',
      desc: '',
      args: [],
    );
  }

  /// `Take your first photo`
  String get photo_button_text {
    return Intl.message(
      'Take your first photo',
      name: 'photo_button_text',
      desc: '',
      args: [],
    );
  }

  /// `Make sure that your image`
  String get photo_requirements_headline {
    return Intl.message(
      'Make sure that your image',
      name: 'photo_requirements_headline',
      desc: '',
      args: [],
    );
  }

  /// `Shows your face clearly`
  String get photo_requirement_face {
    return Intl.message(
      'Shows your face clearly',
      name: 'photo_requirement_face',
      desc: '',
      args: [],
    );
  }

  /// `Yourself only, no group pic`
  String get photo_requirement_yourself {
    return Intl.message(
      'Yourself only, no group pic',
      name: 'photo_requirement_yourself',
      desc: '',
      args: [],
    );
  }

  /// `No fake pic, object or someone else`
  String get photo_requirement_fake {
    return Intl.message(
      'No fake pic, object or someone else',
      name: 'photo_requirement_fake',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `My Account`
  String get account {
    return Intl.message(
      'My Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Unlock App`
  String get unlock_app {
    return Intl.message(
      'Unlock App',
      name: 'unlock_app',
      desc: '',
      args: [],
    );
  }

  /// `Rate Us`
  String get rate_us {
    return Intl.message(
      'Rate Us',
      name: 'rate_us',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get username {
    return Intl.message(
      'Username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Birthday`
  String get birthday {
    return Intl.message(
      'Birthday',
      name: 'birthday',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get validation_required {
    return Intl.message(
      'This field is required',
      name: 'validation_required',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid date`
  String get validation_date {
    return Intl.message(
      'Please enter a valid date',
      name: 'validation_date',
      desc: '',
      args: [],
    );
  }

  /// `Do you really want to unlock the app?`
  String get unlock_app_title {
    return Intl.message(
      'Do you really want to unlock the app?',
      name: 'unlock_app_title',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get unlock_app_title_positive {
    return Intl.message(
      'Yes',
      name: 'unlock_app_title_positive',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get unlock_app_title_negative {
    return Intl.message(
      'No',
      name: 'unlock_app_title_negative',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
