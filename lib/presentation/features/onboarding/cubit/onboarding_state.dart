part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.loading({
    @Default(false) bool isPreviousButtonAvailable,
  }) = _Loading;
  const factory OnboardingState.birthday({
    int? day,
    int? month,
    int? year,
    String? error,
    @Default(false) bool isPreviousButtonAvailable,
  }) = Birthday;
  const factory OnboardingState.nickname({
    String? nickname,
    String? error,
    @Default(true) bool isPreviousButtonAvailable,
  }) = Nickname;
  const factory OnboardingState.gender({
    HumanGender? gander,
    @Default(true) bool isPreviousButtonAvailable,
  }) = Gender;
  const factory OnboardingState.photo({
    @Default(true) bool isPreviousButtonAvailable,
  }) = Photo;
  const factory OnboardingState.camera({
    required camera.CameraController? cameraController,
    required bool isPreviousButtonAvailable,
    @Default(true) bool isFrontCameraActive,
    @Default(true) bool isCameraLoading,
    @Default(false) bool hasError,
  }) = Camera;
  const factory OnboardingState.cameraPreview({
    required camera.XFile image,
    required String adUnitId,
    @Default(true) bool isPreviousButtonAvailable,
    @Default(true) bool showAd,
  }) = CameraPreview;
}

enum HumanGender {
  male,
  female,
  other;

  static HumanGender fromString(String value) {
    switch (value.toLowerCase()) {
      case 'male':
        return HumanGender.male;
      case 'female':
        return HumanGender.female;
      case 'other':
        return HumanGender.other;
      default:
        throw ArgumentError('Invalid gender value');
    }
  }
}

class UserOnboardingData {
  Birthday birthday;
  Nickname nickname;
  Gender gender;

  UserOnboardingData({
    this.birthday = const Birthday(isPreviousButtonAvailable: false),
    this.nickname = const Nickname(isPreviousButtonAvailable: true),
    this.gender = const Gender(isPreviousButtonAvailable: true),
  });

  UserData get userData => UserData(
        birthday: DateTime(birthday.year!, birthday.month!, birthday.day!),
        nickname: nickname.nickname!,
        gender: gender.gander!,
      );
}
