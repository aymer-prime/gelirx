// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMaster) setUserType,
    required TResult Function(int requestTime) setRequestTimer,
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber, VoidCallback onSuccess)
        phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMaster)? setUserType,
    TResult? Function(int requestTime)? setRequestTimer,
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMaster)? setUserType,
    TResult Function(int requestTime)? setRequestTimer,
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUserType value) setUserType,
    required TResult Function(_SetRequestTimer value) setRequestTimer,
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUserType value)? setUserType,
    TResult? Function(_SetRequestTimer value)? setRequestTimer,
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUserType value)? setUserType,
    TResult Function(_SetRequestTimer value)? setRequestTimer,
    TResult Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetUserTypeImplCopyWith<$Res> {
  factory _$$SetUserTypeImplCopyWith(
          _$SetUserTypeImpl value, $Res Function(_$SetUserTypeImpl) then) =
      __$$SetUserTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMaster});
}

/// @nodoc
class __$$SetUserTypeImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetUserTypeImpl>
    implements _$$SetUserTypeImplCopyWith<$Res> {
  __$$SetUserTypeImplCopyWithImpl(
      _$SetUserTypeImpl _value, $Res Function(_$SetUserTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMaster = null,
  }) {
    return _then(_$SetUserTypeImpl(
      null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetUserTypeImpl implements _SetUserType {
  const _$SetUserTypeImpl(this.isMaster);

  @override
  final bool isMaster;

  @override
  String toString() {
    return 'AuthEvent.setUserType(isMaster: $isMaster)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserTypeImpl &&
            (identical(other.isMaster, isMaster) ||
                other.isMaster == isMaster));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMaster);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserTypeImplCopyWith<_$SetUserTypeImpl> get copyWith =>
      __$$SetUserTypeImplCopyWithImpl<_$SetUserTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMaster) setUserType,
    required TResult Function(int requestTime) setRequestTimer,
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber, VoidCallback onSuccess)
        phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return setUserType(isMaster);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMaster)? setUserType,
    TResult? Function(int requestTime)? setRequestTimer,
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return setUserType?.call(isMaster);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMaster)? setUserType,
    TResult Function(int requestTime)? setRequestTimer,
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (setUserType != null) {
      return setUserType(isMaster);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUserType value) setUserType,
    required TResult Function(_SetRequestTimer value) setRequestTimer,
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return setUserType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUserType value)? setUserType,
    TResult? Function(_SetRequestTimer value)? setRequestTimer,
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return setUserType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUserType value)? setUserType,
    TResult Function(_SetRequestTimer value)? setRequestTimer,
    TResult Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (setUserType != null) {
      return setUserType(this);
    }
    return orElse();
  }
}

abstract class _SetUserType implements AuthEvent {
  const factory _SetUserType(final bool isMaster) = _$SetUserTypeImpl;

  bool get isMaster;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetUserTypeImplCopyWith<_$SetUserTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetRequestTimerImplCopyWith<$Res> {
  factory _$$SetRequestTimerImplCopyWith(_$SetRequestTimerImpl value,
          $Res Function(_$SetRequestTimerImpl) then) =
      __$$SetRequestTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int requestTime});
}

/// @nodoc
class __$$SetRequestTimerImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetRequestTimerImpl>
    implements _$$SetRequestTimerImplCopyWith<$Res> {
  __$$SetRequestTimerImplCopyWithImpl(
      _$SetRequestTimerImpl _value, $Res Function(_$SetRequestTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestTime = null,
  }) {
    return _then(_$SetRequestTimerImpl(
      null == requestTime
          ? _value.requestTime
          : requestTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetRequestTimerImpl implements _SetRequestTimer {
  const _$SetRequestTimerImpl(this.requestTime);

  @override
  final int requestTime;

  @override
  String toString() {
    return 'AuthEvent.setRequestTimer(requestTime: $requestTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRequestTimerImpl &&
            (identical(other.requestTime, requestTime) ||
                other.requestTime == requestTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestTime);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRequestTimerImplCopyWith<_$SetRequestTimerImpl> get copyWith =>
      __$$SetRequestTimerImplCopyWithImpl<_$SetRequestTimerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMaster) setUserType,
    required TResult Function(int requestTime) setRequestTimer,
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber, VoidCallback onSuccess)
        phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return setRequestTimer(requestTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMaster)? setUserType,
    TResult? Function(int requestTime)? setRequestTimer,
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return setRequestTimer?.call(requestTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMaster)? setUserType,
    TResult Function(int requestTime)? setRequestTimer,
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (setRequestTimer != null) {
      return setRequestTimer(requestTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUserType value) setUserType,
    required TResult Function(_SetRequestTimer value) setRequestTimer,
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return setRequestTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUserType value)? setUserType,
    TResult? Function(_SetRequestTimer value)? setRequestTimer,
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return setRequestTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUserType value)? setUserType,
    TResult Function(_SetRequestTimer value)? setRequestTimer,
    TResult Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (setRequestTimer != null) {
      return setRequestTimer(this);
    }
    return orElse();
  }
}

abstract class _SetRequestTimer implements AuthEvent {
  const factory _SetRequestTimer(final int requestTime) = _$SetRequestTimerImpl;

  int get requestTime;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetRequestTimerImplCopyWith<_$SetRequestTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SocialMediaLoginImplCopyWith<$Res> {
  factory _$$SocialMediaLoginImplCopyWith(_$SocialMediaLoginImpl value,
          $Res Function(_$SocialMediaLoginImpl) then) =
      __$$SocialMediaLoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocialMediaType type});
}

/// @nodoc
class __$$SocialMediaLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SocialMediaLoginImpl>
    implements _$$SocialMediaLoginImplCopyWith<$Res> {
  __$$SocialMediaLoginImplCopyWithImpl(_$SocialMediaLoginImpl _value,
      $Res Function(_$SocialMediaLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$SocialMediaLoginImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SocialMediaType,
    ));
  }
}

/// @nodoc

class _$SocialMediaLoginImpl implements _SocialMediaLogin {
  const _$SocialMediaLoginImpl(this.type);

  @override
  final SocialMediaType type;

  @override
  String toString() {
    return 'AuthEvent.socialMediaLogin(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialMediaLoginImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialMediaLoginImplCopyWith<_$SocialMediaLoginImpl> get copyWith =>
      __$$SocialMediaLoginImplCopyWithImpl<_$SocialMediaLoginImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMaster) setUserType,
    required TResult Function(int requestTime) setRequestTimer,
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber, VoidCallback onSuccess)
        phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return socialMediaLogin(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMaster)? setUserType,
    TResult? Function(int requestTime)? setRequestTimer,
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return socialMediaLogin?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMaster)? setUserType,
    TResult Function(int requestTime)? setRequestTimer,
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (socialMediaLogin != null) {
      return socialMediaLogin(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUserType value) setUserType,
    required TResult Function(_SetRequestTimer value) setRequestTimer,
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return socialMediaLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUserType value)? setUserType,
    TResult? Function(_SetRequestTimer value)? setRequestTimer,
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return socialMediaLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUserType value)? setUserType,
    TResult Function(_SetRequestTimer value)? setRequestTimer,
    TResult Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (socialMediaLogin != null) {
      return socialMediaLogin(this);
    }
    return orElse();
  }
}

abstract class _SocialMediaLogin implements AuthEvent {
  const factory _SocialMediaLogin(final SocialMediaType type) =
      _$SocialMediaLoginImpl;

  SocialMediaType get type;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialMediaLoginImplCopyWith<_$SocialMediaLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneLoginRequestedImplCopyWith<$Res> {
  factory _$$PhoneLoginRequestedImplCopyWith(_$PhoneLoginRequestedImpl value,
          $Res Function(_$PhoneLoginRequestedImpl) then) =
      __$$PhoneLoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, VoidCallback onSuccess});
}

/// @nodoc
class __$$PhoneLoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PhoneLoginRequestedImpl>
    implements _$$PhoneLoginRequestedImplCopyWith<$Res> {
  __$$PhoneLoginRequestedImplCopyWithImpl(_$PhoneLoginRequestedImpl _value,
      $Res Function(_$PhoneLoginRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? onSuccess = null,
  }) {
    return _then(_$PhoneLoginRequestedImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$PhoneLoginRequestedImpl implements _PhoneLoginRequested {
  const _$PhoneLoginRequestedImpl(
      {required this.phoneNumber, required this.onSuccess});

  @override
  final String phoneNumber;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'AuthEvent.phoneLoginRequested(phoneNumber: $phoneNumber, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneLoginRequestedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, onSuccess);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneLoginRequestedImplCopyWith<_$PhoneLoginRequestedImpl> get copyWith =>
      __$$PhoneLoginRequestedImplCopyWithImpl<_$PhoneLoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMaster) setUserType,
    required TResult Function(int requestTime) setRequestTimer,
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber, VoidCallback onSuccess)
        phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return phoneLoginRequested(phoneNumber, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMaster)? setUserType,
    TResult? Function(int requestTime)? setRequestTimer,
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return phoneLoginRequested?.call(phoneNumber, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMaster)? setUserType,
    TResult Function(int requestTime)? setRequestTimer,
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (phoneLoginRequested != null) {
      return phoneLoginRequested(phoneNumber, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUserType value) setUserType,
    required TResult Function(_SetRequestTimer value) setRequestTimer,
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return phoneLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUserType value)? setUserType,
    TResult? Function(_SetRequestTimer value)? setRequestTimer,
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return phoneLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUserType value)? setUserType,
    TResult Function(_SetRequestTimer value)? setRequestTimer,
    TResult Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (phoneLoginRequested != null) {
      return phoneLoginRequested(this);
    }
    return orElse();
  }
}

abstract class _PhoneLoginRequested implements AuthEvent {
  const factory _PhoneLoginRequested(
      {required final String phoneNumber,
      required final VoidCallback onSuccess}) = _$PhoneLoginRequestedImpl;

  String get phoneNumber;
  VoidCallback get onSuccess;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneLoginRequestedImplCopyWith<_$PhoneLoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyPhoneNumberImplCopyWith<$Res> {
  factory _$$VerifyPhoneNumberImplCopyWith(_$VerifyPhoneNumberImpl value,
          $Res Function(_$VerifyPhoneNumberImpl) then) =
      __$$VerifyPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, String smsCode});
}

/// @nodoc
class __$$VerifyPhoneNumberImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyPhoneNumberImpl>
    implements _$$VerifyPhoneNumberImplCopyWith<$Res> {
  __$$VerifyPhoneNumberImplCopyWithImpl(_$VerifyPhoneNumberImpl _value,
      $Res Function(_$VerifyPhoneNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? smsCode = null,
  }) {
    return _then(_$VerifyPhoneNumberImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPhoneNumberImpl implements _VerifyPhoneNumber {
  const _$VerifyPhoneNumberImpl(
      {required this.verificationId, required this.smsCode});

  @override
  final String verificationId;
  @override
  final String smsCode;

  @override
  String toString() {
    return 'AuthEvent.verifyPhoneNumber(verificationId: $verificationId, smsCode: $smsCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhoneNumberImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, smsCode);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      __$$VerifyPhoneNumberImplCopyWithImpl<_$VerifyPhoneNumberImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMaster) setUserType,
    required TResult Function(int requestTime) setRequestTimer,
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber, VoidCallback onSuccess)
        phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(verificationId, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMaster)? setUserType,
    TResult? Function(int requestTime)? setRequestTimer,
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(verificationId, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMaster)? setUserType,
    TResult Function(int requestTime)? setRequestTimer,
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber, VoidCallback onSuccess)?
        phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(verificationId, smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetUserType value) setUserType,
    required TResult Function(_SetRequestTimer value) setRequestTimer,
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetUserType value)? setUserType,
    TResult? Function(_SetRequestTimer value)? setRequestTimer,
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetUserType value)? setUserType,
    TResult Function(_SetRequestTimer value)? setRequestTimer,
    TResult Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AuthEvent {
  const factory _VerifyPhoneNumber(
      {required final String verificationId,
      required final String smsCode}) = _$VerifyPhoneNumberImpl;

  String get verificationId;
  String get smsCode;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPhoneNumberImplCopyWith<_$VerifyPhoneNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isMaster => throw _privateConstructorUsedError;
  bool get isRegister => throw _privateConstructorUsedError;
  int get requestAgainTime => throw _privateConstructorUsedError;
  Option<UserEntity> get user =>
      throw _privateConstructorUsedError; // UserEntity from your domain
  Option<Either<ApiException, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError; // For handling error messages
  Option<String> get verificationId =>
      throw _privateConstructorUsedError; // Store verification ID
  Option<String> get otp => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isMaster,
      bool isRegister,
      int requestAgainTime,
      Option<UserEntity> user,
      Option<Either<ApiException, Unit>> authFailureOrSuccessOption,
      Option<String> verificationId,
      Option<String> otp});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isMaster = null,
    Object? isRegister = null,
    Object? requestAgainTime = null,
    Object? user = null,
    Object? authFailureOrSuccessOption = null,
    Object? verificationId = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegister: null == isRegister
          ? _value.isRegister
          : isRegister // ignore: cast_nullable_to_non_nullable
              as bool,
      requestAgainTime: null == requestAgainTime
          ? _value.requestAgainTime
          : requestAgainTime // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<UserEntity>,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isMaster,
      bool isRegister,
      int requestAgainTime,
      Option<UserEntity> user,
      Option<Either<ApiException, Unit>> authFailureOrSuccessOption,
      Option<String> verificationId,
      Option<String> otp});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isMaster = null,
    Object? isRegister = null,
    Object? requestAgainTime = null,
    Object? user = null,
    Object? authFailureOrSuccessOption = null,
    Object? verificationId = null,
    Object? otp = null,
  }) {
    return _then(_$AuthStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegister: null == isRegister
          ? _value.isRegister
          : isRegister // ignore: cast_nullable_to_non_nullable
              as bool,
      requestAgainTime: null == requestAgainTime
          ? _value.requestAgainTime
          : requestAgainTime // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<UserEntity>,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl(
      {required this.isLoading,
      required this.isMaster,
      required this.isRegister,
      required this.requestAgainTime,
      required this.user,
      required this.authFailureOrSuccessOption,
      required this.verificationId,
      required this.otp});

  @override
  final bool isLoading;
  @override
  final bool isMaster;
  @override
  final bool isRegister;
  @override
  final int requestAgainTime;
  @override
  final Option<UserEntity> user;
// UserEntity from your domain
  @override
  final Option<Either<ApiException, Unit>> authFailureOrSuccessOption;
// For handling error messages
  @override
  final Option<String> verificationId;
// Store verification ID
  @override
  final Option<String> otp;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, isMaster: $isMaster, isRegister: $isRegister, requestAgainTime: $requestAgainTime, user: $user, authFailureOrSuccessOption: $authFailureOrSuccessOption, verificationId: $verificationId, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isMaster, isMaster) ||
                other.isMaster == isMaster) &&
            (identical(other.isRegister, isRegister) ||
                other.isRegister == isRegister) &&
            (identical(other.requestAgainTime, requestAgainTime) ||
                other.requestAgainTime == requestAgainTime) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isMaster, isRegister,
      requestAgainTime, user, authFailureOrSuccessOption, verificationId, otp);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLoading,
      required final bool isMaster,
      required final bool isRegister,
      required final int requestAgainTime,
      required final Option<UserEntity> user,
      required final Option<Either<ApiException, Unit>>
          authFailureOrSuccessOption,
      required final Option<String> verificationId,
      required final Option<String> otp}) = _$AuthStateImpl;

  @override
  bool get isLoading;
  @override
  bool get isMaster;
  @override
  bool get isRegister;
  @override
  int get requestAgainTime;
  @override
  Option<UserEntity> get user; // UserEntity from your domain
  @override
  Option<Either<ApiException, Unit>>
      get authFailureOrSuccessOption; // For handling error messages
  @override
  Option<String> get verificationId; // Store verification ID
  @override
  Option<String> get otp;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
