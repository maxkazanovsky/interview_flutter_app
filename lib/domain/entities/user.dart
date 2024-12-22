import 'package:test_birthday_app/presentation/features/onboarding/cubit/onboarding_cubit.dart';

class UserData {
  final DateTime birthday;
  final String nickname;
  final HumanGender gender;

  UserData({required this.birthday, required this.nickname, required this.gender});

  Map<String, dynamic> toMap() {
    return {
      'birthday': birthday.toIso8601String(),
      'nickname': nickname,
      'gender': gender.name,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      birthday: DateTime.parse(map['birthday']),
      nickname: map['nickname'] as String,
      gender: HumanGender.fromString(map['gender']),
    );
  }
}
