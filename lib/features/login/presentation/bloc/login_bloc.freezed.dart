// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

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
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber) phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber)? phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber)? phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber) phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return socialMediaLogin(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber)? phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return socialMediaLogin?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber)? phoneLoginRequested,
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
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return socialMediaLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return socialMediaLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  $Res call({String phoneNumber});
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
  }) {
    return _then(_$PhoneLoginRequestedImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneLoginRequestedImpl implements _PhoneLoginRequested {
  const _$PhoneLoginRequestedImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.phoneLoginRequested(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneLoginRequestedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

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
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber) phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return phoneLoginRequested(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber)? phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return phoneLoginRequested?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber)? phoneLoginRequested,
    TResult Function(String verificationId, String smsCode)? verifyPhoneNumber,
    required TResult orElse(),
  }) {
    if (phoneLoginRequested != null) {
      return phoneLoginRequested(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return phoneLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return phoneLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  const factory _PhoneLoginRequested({required final String phoneNumber}) =
      _$PhoneLoginRequestedImpl;

  String get phoneNumber;

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
    required TResult Function(SocialMediaType type) socialMediaLogin,
    required TResult Function(String phoneNumber) phoneLoginRequested,
    required TResult Function(String verificationId, String smsCode)
        verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(verificationId, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SocialMediaType type)? socialMediaLogin,
    TResult? Function(String phoneNumber)? phoneLoginRequested,
    TResult? Function(String verificationId, String smsCode)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(verificationId, smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocialMediaType type)? socialMediaLogin,
    TResult Function(String phoneNumber)? phoneLoginRequested,
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
    required TResult Function(_SocialMediaLogin value) socialMediaLogin,
    required TResult Function(_PhoneLoginRequested value) phoneLoginRequested,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SocialMediaLogin value)? socialMediaLogin,
    TResult? Function(_PhoneLoginRequested value)? phoneLoginRequested,
    TResult? Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
  }) {
    return verifyPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
  Option<UserEntity> get user =>
      throw _privateConstructorUsedError; // UserEntity from your domain
  Option<ApiException> get exception =>
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
      Option<UserEntity> user,
      Option<ApiException> exception,
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
    Object? user = null,
    Object? exception = null,
    Object? verificationId = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<UserEntity>,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Option<ApiException>,
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
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<UserEntity> user,
      Option<ApiException> exception,
      Option<String> verificationId,
      Option<String> otp});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = null,
    Object? exception = null,
    Object? verificationId = null,
    Object? otp = null,
  }) {
    return _then(_$LoginStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<UserEntity>,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Option<ApiException>,
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

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.isLoading,
      required this.user,
      required this.exception,
      required this.verificationId,
      required this.otp});

  @override
  final bool isLoading;
  @override
  final Option<UserEntity> user;
// UserEntity from your domain
  @override
  final Option<ApiException> exception;
// For handling error messages
  @override
  final Option<String> verificationId;
// Store verification ID
  @override
  final Option<String> otp;

  @override
  String toString() {
    return 'AuthState(isLoading: $isLoading, user: $user, exception: $exception, verificationId: $verificationId, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, user, exception, verificationId, otp);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements AuthState {
  const factory _LoginState(
      {required final bool isLoading,
      required final Option<UserEntity> user,
      required final Option<ApiException> exception,
      required final Option<String> verificationId,
      required final Option<String> otp}) = _$LoginStateImpl;

  @override
  bool get isLoading;
  @override
  Option<UserEntity> get user; // UserEntity from your domain
  @override
  Option<ApiException> get exception; // For handling error messages
  @override
  Option<String> get verificationId; // Store verification ID
  @override
  Option<String> get otp;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
