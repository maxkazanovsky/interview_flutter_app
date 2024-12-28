// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(maxAge) => "Age must not exceed ${maxAge} years.";

  static String m1(minAge) => "You must be at least ${minAge} years old.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "account": MessageLookupByLibrary.simpleMessage("My Account"),
        "birthday": MessageLookupByLibrary.simpleMessage("Birthday"),
        "birthday_day": MessageLookupByLibrary.simpleMessage("Day"),
        "birthday_headline":
            MessageLookupByLibrary.simpleMessage("When’s your\nbirthday?"),
        "birthday_month": MessageLookupByLibrary.simpleMessage("Month"),
        "birthday_year": MessageLookupByLibrary.simpleMessage("Year"),
        "camera_error": MessageLookupByLibrary.simpleMessage("Camera error"),
        "error_user_data":
            MessageLookupByLibrary.simpleMessage("Oops! Something went wrong!"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "gender_female": MessageLookupByLibrary.simpleMessage("Female"),
        "gender_headline": MessageLookupByLibrary.simpleMessage(
            "Which gender do\nyou identify as?"),
        "gender_male": MessageLookupByLibrary.simpleMessage("Male"),
        "gender_other": MessageLookupByLibrary.simpleMessage("Other"),
        "gender_subtitle": MessageLookupByLibrary.simpleMessage(
            "Your gender helps us find the right\nmatches for you."),
        "next": MessageLookupByLibrary.simpleMessage("Continue"),
        "nickname_headline":
            MessageLookupByLibrary.simpleMessage("Choose your\nnickname?"),
        "photo_button_text":
            MessageLookupByLibrary.simpleMessage("Take your first photo"),
        "photo_headline": MessageLookupByLibrary.simpleMessage(
            "Add a nice photo\nof yourself"),
        "photo_requirement_face":
            MessageLookupByLibrary.simpleMessage("Shows your face clearly"),
        "photo_requirement_fake": MessageLookupByLibrary.simpleMessage(
            "No fake pic, object or someone else"),
        "photo_requirement_yourself":
            MessageLookupByLibrary.simpleMessage("Yourself only, no group pic"),
        "photo_requirements_headline":
            MessageLookupByLibrary.simpleMessage("Make sure that your image"),
        "rate_us": MessageLookupByLibrary.simpleMessage("Rate Us"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "unlock_app": MessageLookupByLibrary.simpleMessage("Unlock App"),
        "unlock_app_title": MessageLookupByLibrary.simpleMessage(
            "Do you really want to unlock the app?"),
        "unlock_app_title_negative": MessageLookupByLibrary.simpleMessage("No"),
        "unlock_app_title_positive":
            MessageLookupByLibrary.simpleMessage("Yes"),
        "username": MessageLookupByLibrary.simpleMessage("Username"),
        "validation_date":
            MessageLookupByLibrary.simpleMessage("Please enter a valid date"),
        "validation_future_date": MessageLookupByLibrary.simpleMessage(
            "Date cannot be in the future."),
        "validation_invalid_username": MessageLookupByLibrary.simpleMessage(
            "Invalid characters in username."),
        "validation_maximum_age": m0,
        "validation_minimum_age": m1,
        "validation_nickname_max_length": MessageLookupByLibrary.simpleMessage(
            "Your nickname is too long, maximum is 10 symbols."),
        "validation_nickname_min_length": MessageLookupByLibrary.simpleMessage(
            "Your nickname is too short, please enter at least 5 symbols."),
        "validation_required":
            MessageLookupByLibrary.simpleMessage("This field is required"),
        "welcome_headline": MessageLookupByLibrary.simpleMessage(
            "Are you ready for\nyour test?"),
        "welcome_subtitle": MessageLookupByLibrary.simpleMessage(
            "Start now by creating your profile and connect!")
      };
}
