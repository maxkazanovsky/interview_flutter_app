// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingState {
  bool get isPreviousButtonAvailable => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res, OnboardingState>;
  @useResult
  $Res call({bool isPreviousButtonAvailable});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res, $Val extends OnboardingState>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPreviousButtonAvailable = null,
  }) {
    return _then(_value.copyWith(
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPreviousButtonAvailable});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPreviousButtonAvailable = null,
  }) {
    return _then(_$LoadingImpl(
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({this.isPreviousButtonAvailable = false});

  @override
  @JsonKey()
  final bool isPreviousButtonAvailable;

  @override
  String toString() {
    return 'OnboardingState.loading(isPreviousButtonAvailable: $isPreviousButtonAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPreviousButtonAvailable);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return loading(isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return loading?.call(isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isPreviousButtonAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OnboardingState {
  const factory _Loading({final bool isPreviousButtonAvailable}) =
      _$LoadingImpl;

  @override
  bool get isPreviousButtonAvailable;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirthdayImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$BirthdayImplCopyWith(
          _$BirthdayImpl value, $Res Function(_$BirthdayImpl) then) =
      __$$BirthdayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? day,
      int? month,
      int? year,
      String? error,
      bool isPreviousButtonAvailable});
}

/// @nodoc
class __$$BirthdayImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$BirthdayImpl>
    implements _$$BirthdayImplCopyWith<$Res> {
  __$$BirthdayImplCopyWithImpl(
      _$BirthdayImpl _value, $Res Function(_$BirthdayImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? error = freezed,
    Object? isPreviousButtonAvailable = null,
  }) {
    return _then(_$BirthdayImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BirthdayImpl implements Birthday {
  const _$BirthdayImpl(
      {this.day,
      this.month,
      this.year,
      this.error,
      this.isPreviousButtonAvailable = false});

  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isPreviousButtonAvailable;

  @override
  String toString() {
    return 'OnboardingState.birthday(day: $day, month: $month, year: $year, error: $error, isPreviousButtonAvailable: $isPreviousButtonAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthdayImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, day, month, year, error, isPreviousButtonAvailable);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthdayImplCopyWith<_$BirthdayImpl> get copyWith =>
      __$$BirthdayImplCopyWithImpl<_$BirthdayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return birthday(day, month, year, error, isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return birthday?.call(day, month, year, error, isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (birthday != null) {
      return birthday(day, month, year, error, isPreviousButtonAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return birthday(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return birthday?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (birthday != null) {
      return birthday(this);
    }
    return orElse();
  }
}

abstract class Birthday implements OnboardingState {
  const factory Birthday(
      {final int? day,
      final int? month,
      final int? year,
      final String? error,
      final bool isPreviousButtonAvailable}) = _$BirthdayImpl;

  int? get day;
  int? get month;
  int? get year;
  String? get error;
  @override
  bool get isPreviousButtonAvailable;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirthdayImplCopyWith<_$BirthdayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NicknameImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$NicknameImplCopyWith(
          _$NicknameImpl value, $Res Function(_$NicknameImpl) then) =
      __$$NicknameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nickname, String? error, bool isPreviousButtonAvailable});
}

/// @nodoc
class __$$NicknameImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$NicknameImpl>
    implements _$$NicknameImplCopyWith<$Res> {
  __$$NicknameImplCopyWithImpl(
      _$NicknameImpl _value, $Res Function(_$NicknameImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = freezed,
    Object? error = freezed,
    Object? isPreviousButtonAvailable = null,
  }) {
    return _then(_$NicknameImpl(
      nickname: freezed == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NicknameImpl implements Nickname {
  const _$NicknameImpl(
      {this.nickname, this.error, this.isPreviousButtonAvailable = true});

  @override
  final String? nickname;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isPreviousButtonAvailable;

  @override
  String toString() {
    return 'OnboardingState.nickname(nickname: $nickname, error: $error, isPreviousButtonAvailable: $isPreviousButtonAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nickname, error, isPreviousButtonAvailable);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameImplCopyWith<_$NicknameImpl> get copyWith =>
      __$$NicknameImplCopyWithImpl<_$NicknameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return nickname(this.nickname, error, isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return nickname?.call(this.nickname, error, isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (nickname != null) {
      return nickname(this.nickname, error, isPreviousButtonAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return nickname(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return nickname?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (nickname != null) {
      return nickname(this);
    }
    return orElse();
  }
}

abstract class Nickname implements OnboardingState {
  const factory Nickname(
      {final String? nickname,
      final String? error,
      final bool isPreviousButtonAvailable}) = _$NicknameImpl;

  String? get nickname;
  String? get error;
  @override
  bool get isPreviousButtonAvailable;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NicknameImplCopyWith<_$NicknameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$GenderImplCopyWith(
          _$GenderImpl value, $Res Function(_$GenderImpl) then) =
      __$$GenderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HumanGender? gander, bool isPreviousButtonAvailable});
}

/// @nodoc
class __$$GenderImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$GenderImpl>
    implements _$$GenderImplCopyWith<$Res> {
  __$$GenderImplCopyWithImpl(
      _$GenderImpl _value, $Res Function(_$GenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gander = freezed,
    Object? isPreviousButtonAvailable = null,
  }) {
    return _then(_$GenderImpl(
      gander: freezed == gander
          ? _value.gander
          : gander // ignore: cast_nullable_to_non_nullable
              as HumanGender?,
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GenderImpl implements Gender {
  const _$GenderImpl({this.gander, this.isPreviousButtonAvailable = true});

  @override
  final HumanGender? gander;
  @override
  @JsonKey()
  final bool isPreviousButtonAvailable;

  @override
  String toString() {
    return 'OnboardingState.gender(gander: $gander, isPreviousButtonAvailable: $isPreviousButtonAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderImpl &&
            (identical(other.gander, gander) || other.gander == gander) &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, gander, isPreviousButtonAvailable);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      __$$GenderImplCopyWithImpl<_$GenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return gender(gander, isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return gender?.call(gander, isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (gender != null) {
      return gender(gander, isPreviousButtonAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return gender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return gender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (gender != null) {
      return gender(this);
    }
    return orElse();
  }
}

abstract class Gender implements OnboardingState {
  const factory Gender(
      {final HumanGender? gander,
      final bool isPreviousButtonAvailable}) = _$GenderImpl;

  HumanGender? get gander;
  @override
  bool get isPreviousButtonAvailable;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenderImplCopyWith<_$GenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPreviousButtonAvailable});
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPreviousButtonAvailable = null,
  }) {
    return _then(_$PhotoImpl(
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PhotoImpl implements Photo {
  const _$PhotoImpl({this.isPreviousButtonAvailable = true});

  @override
  @JsonKey()
  final bool isPreviousButtonAvailable;

  @override
  String toString() {
    return 'OnboardingState.photo(isPreviousButtonAvailable: $isPreviousButtonAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPreviousButtonAvailable);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return photo(isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return photo?.call(isPreviousButtonAvailable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(isPreviousButtonAvailable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }
}

abstract class Photo implements OnboardingState {
  const factory Photo({final bool isPreviousButtonAvailable}) = _$PhotoImpl;

  @override
  bool get isPreviousButtonAvailable;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$CameraImplCopyWith(
          _$CameraImpl value, $Res Function(_$CameraImpl) then) =
      __$$CameraImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {camera.CameraController? cameraController,
      bool isPreviousButtonAvailable,
      bool isFrontCameraActive,
      bool isCameraLoading,
      bool hasError});
}

/// @nodoc
class __$$CameraImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$CameraImpl>
    implements _$$CameraImplCopyWith<$Res> {
  __$$CameraImplCopyWithImpl(
      _$CameraImpl _value, $Res Function(_$CameraImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cameraController = freezed,
    Object? isPreviousButtonAvailable = null,
    Object? isFrontCameraActive = null,
    Object? isCameraLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$CameraImpl(
      cameraController: freezed == cameraController
          ? _value.cameraController
          : cameraController // ignore: cast_nullable_to_non_nullable
              as camera.CameraController?,
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrontCameraActive: null == isFrontCameraActive
          ? _value.isFrontCameraActive
          : isFrontCameraActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isCameraLoading: null == isCameraLoading
          ? _value.isCameraLoading
          : isCameraLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CameraImpl implements Camera {
  const _$CameraImpl(
      {required this.cameraController,
      required this.isPreviousButtonAvailable,
      this.isFrontCameraActive = true,
      this.isCameraLoading = true,
      this.hasError = false});

  @override
  final camera.CameraController? cameraController;
  @override
  final bool isPreviousButtonAvailable;
  @override
  @JsonKey()
  final bool isFrontCameraActive;
  @override
  @JsonKey()
  final bool isCameraLoading;
  @override
  @JsonKey()
  final bool hasError;

  @override
  String toString() {
    return 'OnboardingState.camera(cameraController: $cameraController, isPreviousButtonAvailable: $isPreviousButtonAvailable, isFrontCameraActive: $isFrontCameraActive, isCameraLoading: $isCameraLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraImpl &&
            (identical(other.cameraController, cameraController) ||
                other.cameraController == cameraController) &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable) &&
            (identical(other.isFrontCameraActive, isFrontCameraActive) ||
                other.isFrontCameraActive == isFrontCameraActive) &&
            (identical(other.isCameraLoading, isCameraLoading) ||
                other.isCameraLoading == isCameraLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cameraController,
      isPreviousButtonAvailable,
      isFrontCameraActive,
      isCameraLoading,
      hasError);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraImplCopyWith<_$CameraImpl> get copyWith =>
      __$$CameraImplCopyWithImpl<_$CameraImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return camera(cameraController, isPreviousButtonAvailable,
        isFrontCameraActive, isCameraLoading, hasError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return camera?.call(cameraController, isPreviousButtonAvailable,
        isFrontCameraActive, isCameraLoading, hasError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (camera != null) {
      return camera(cameraController, isPreviousButtonAvailable,
          isFrontCameraActive, isCameraLoading, hasError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return camera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return camera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (camera != null) {
      return camera(this);
    }
    return orElse();
  }
}

abstract class Camera implements OnboardingState {
  const factory Camera(
      {required final camera.CameraController? cameraController,
      required final bool isPreviousButtonAvailable,
      final bool isFrontCameraActive,
      final bool isCameraLoading,
      final bool hasError}) = _$CameraImpl;

  camera.CameraController? get cameraController;
  @override
  bool get isPreviousButtonAvailable;
  bool get isFrontCameraActive;
  bool get isCameraLoading;
  bool get hasError;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraImplCopyWith<_$CameraImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraPreviewImplCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$$CameraPreviewImplCopyWith(
          _$CameraPreviewImpl value, $Res Function(_$CameraPreviewImpl) then) =
      __$$CameraPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {camera.XFile image,
      String adUnitId,
      bool isPreviousButtonAvailable,
      bool showAd});
}

/// @nodoc
class __$$CameraPreviewImplCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res, _$CameraPreviewImpl>
    implements _$$CameraPreviewImplCopyWith<$Res> {
  __$$CameraPreviewImplCopyWithImpl(
      _$CameraPreviewImpl _value, $Res Function(_$CameraPreviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? adUnitId = null,
    Object? isPreviousButtonAvailable = null,
    Object? showAd = null,
  }) {
    return _then(_$CameraPreviewImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as camera.XFile,
      adUnitId: null == adUnitId
          ? _value.adUnitId
          : adUnitId // ignore: cast_nullable_to_non_nullable
              as String,
      isPreviousButtonAvailable: null == isPreviousButtonAvailable
          ? _value.isPreviousButtonAvailable
          : isPreviousButtonAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      showAd: null == showAd
          ? _value.showAd
          : showAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CameraPreviewImpl implements CameraPreview {
  const _$CameraPreviewImpl(
      {required this.image,
      required this.adUnitId,
      this.isPreviousButtonAvailable = true,
      this.showAd = true});

  @override
  final camera.XFile image;
  @override
  final String adUnitId;
  @override
  @JsonKey()
  final bool isPreviousButtonAvailable;
  @override
  @JsonKey()
  final bool showAd;

  @override
  String toString() {
    return 'OnboardingState.cameraPreview(image: $image, adUnitId: $adUnitId, isPreviousButtonAvailable: $isPreviousButtonAvailable, showAd: $showAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraPreviewImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.adUnitId, adUnitId) ||
                other.adUnitId == adUnitId) &&
            (identical(other.isPreviousButtonAvailable,
                    isPreviousButtonAvailable) ||
                other.isPreviousButtonAvailable == isPreviousButtonAvailable) &&
            (identical(other.showAd, showAd) || other.showAd == showAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, image, adUnitId, isPreviousButtonAvailable, showAd);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraPreviewImplCopyWith<_$CameraPreviewImpl> get copyWith =>
      __$$CameraPreviewImplCopyWithImpl<_$CameraPreviewImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPreviousButtonAvailable) loading,
    required TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)
        birthday,
    required TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)
        nickname,
    required TResult Function(
            HumanGender? gander, bool isPreviousButtonAvailable)
        gender,
    required TResult Function(bool isPreviousButtonAvailable) photo,
    required TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)
        camera,
    required TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)
        cameraPreview,
  }) {
    return cameraPreview(image, adUnitId, isPreviousButtonAvailable, showAd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPreviousButtonAvailable)? loading,
    TResult? Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult? Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult? Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult? Function(bool isPreviousButtonAvailable)? photo,
    TResult? Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult? Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
  }) {
    return cameraPreview?.call(
        image, adUnitId, isPreviousButtonAvailable, showAd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPreviousButtonAvailable)? loading,
    TResult Function(int? day, int? month, int? year, String? error,
            bool isPreviousButtonAvailable)?
        birthday,
    TResult Function(
            String? nickname, String? error, bool isPreviousButtonAvailable)?
        nickname,
    TResult Function(HumanGender? gander, bool isPreviousButtonAvailable)?
        gender,
    TResult Function(bool isPreviousButtonAvailable)? photo,
    TResult Function(
            camera.CameraController? cameraController,
            bool isPreviousButtonAvailable,
            bool isFrontCameraActive,
            bool isCameraLoading,
            bool hasError)?
        camera,
    TResult Function(camera.XFile image, String adUnitId,
            bool isPreviousButtonAvailable, bool showAd)?
        cameraPreview,
    required TResult orElse(),
  }) {
    if (cameraPreview != null) {
      return cameraPreview(image, adUnitId, isPreviousButtonAvailable, showAd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(Birthday value) birthday,
    required TResult Function(Nickname value) nickname,
    required TResult Function(Gender value) gender,
    required TResult Function(Photo value) photo,
    required TResult Function(Camera value) camera,
    required TResult Function(CameraPreview value) cameraPreview,
  }) {
    return cameraPreview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(Birthday value)? birthday,
    TResult? Function(Nickname value)? nickname,
    TResult? Function(Gender value)? gender,
    TResult? Function(Photo value)? photo,
    TResult? Function(Camera value)? camera,
    TResult? Function(CameraPreview value)? cameraPreview,
  }) {
    return cameraPreview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(Birthday value)? birthday,
    TResult Function(Nickname value)? nickname,
    TResult Function(Gender value)? gender,
    TResult Function(Photo value)? photo,
    TResult Function(Camera value)? camera,
    TResult Function(CameraPreview value)? cameraPreview,
    required TResult orElse(),
  }) {
    if (cameraPreview != null) {
      return cameraPreview(this);
    }
    return orElse();
  }
}

abstract class CameraPreview implements OnboardingState {
  const factory CameraPreview(
      {required final camera.XFile image,
      required final String adUnitId,
      final bool isPreviousButtonAvailable,
      final bool showAd}) = _$CameraPreviewImpl;

  camera.XFile get image;
  String get adUnitId;
  @override
  bool get isPreviousButtonAvailable;
  bool get showAd;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CameraPreviewImplCopyWith<_$CameraPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
