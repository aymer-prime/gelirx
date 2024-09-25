// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(Function onSuccess) registerUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(Function onSuccess)? registerUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(Function onSuccess)? registerUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_RegisterUserInfo value) registerUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_RegisterUserInfo value)? registerUserInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_RegisterUserInfo value)? registerUserInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationEventCopyWith<$Res> {
  factory $UserVerificationEventCopyWith(UserVerificationEvent value,
          $Res Function(UserVerificationEvent) then) =
      _$UserVerificationEventCopyWithImpl<$Res, UserVerificationEvent>;
}

/// @nodoc
class _$UserVerificationEventCopyWithImpl<$Res,
        $Val extends UserVerificationEvent>
    implements $UserVerificationEventCopyWith<$Res> {
  _$UserVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$UserVerificationEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'UserVerificationEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(Function onSuccess) registerUserInfo,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(Function onSuccess)? registerUserInfo,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(Function onSuccess)? registerUserInfo,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_RegisterUserInfo value) registerUserInfo,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_RegisterUserInfo value)? registerUserInfo,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_RegisterUserInfo value)? registerUserInfo,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements UserVerificationEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurNameChangedImplCopyWith<$Res> {
  factory _$$SurNameChangedImplCopyWith(_$SurNameChangedImpl value,
          $Res Function(_$SurNameChangedImpl) then) =
      __$$SurNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surName});
}

/// @nodoc
class __$$SurNameChangedImplCopyWithImpl<$Res>
    extends _$UserVerificationEventCopyWithImpl<$Res, _$SurNameChangedImpl>
    implements _$$SurNameChangedImplCopyWith<$Res> {
  __$$SurNameChangedImplCopyWithImpl(
      _$SurNameChangedImpl _value, $Res Function(_$SurNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surName = null,
  }) {
    return _then(_$SurNameChangedImpl(
      null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SurNameChangedImpl implements _SurNameChanged {
  const _$SurNameChangedImpl(this.surName);

  @override
  final String surName;

  @override
  String toString() {
    return 'UserVerificationEvent.surNameChanged(surName: $surName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurNameChangedImpl &&
            (identical(other.surName, surName) || other.surName == surName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surName);

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurNameChangedImplCopyWith<_$SurNameChangedImpl> get copyWith =>
      __$$SurNameChangedImplCopyWithImpl<_$SurNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(Function onSuccess) registerUserInfo,
  }) {
    return surNameChanged(surName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(Function onSuccess)? registerUserInfo,
  }) {
    return surNameChanged?.call(surName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(Function onSuccess)? registerUserInfo,
    required TResult orElse(),
  }) {
    if (surNameChanged != null) {
      return surNameChanged(surName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_RegisterUserInfo value) registerUserInfo,
  }) {
    return surNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_RegisterUserInfo value)? registerUserInfo,
  }) {
    return surNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_RegisterUserInfo value)? registerUserInfo,
    required TResult orElse(),
  }) {
    if (surNameChanged != null) {
      return surNameChanged(this);
    }
    return orElse();
  }
}

abstract class _SurNameChanged implements UserVerificationEvent {
  const factory _SurNameChanged(final String surName) = _$SurNameChangedImpl;

  String get surName;

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurNameChangedImplCopyWith<_$SurNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterUserInfoImplCopyWith<$Res> {
  factory _$$RegisterUserInfoImplCopyWith(_$RegisterUserInfoImpl value,
          $Res Function(_$RegisterUserInfoImpl) then) =
      __$$RegisterUserInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Function onSuccess});
}

/// @nodoc
class __$$RegisterUserInfoImplCopyWithImpl<$Res>
    extends _$UserVerificationEventCopyWithImpl<$Res, _$RegisterUserInfoImpl>
    implements _$$RegisterUserInfoImplCopyWith<$Res> {
  __$$RegisterUserInfoImplCopyWithImpl(_$RegisterUserInfoImpl _value,
      $Res Function(_$RegisterUserInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccess = null,
  }) {
    return _then(_$RegisterUserInfoImpl(
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$RegisterUserInfoImpl implements _RegisterUserInfo {
  const _$RegisterUserInfoImpl(this.onSuccess);

  @override
  final Function onSuccess;

  @override
  String toString() {
    return 'UserVerificationEvent.registerUserInfo(onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUserInfoImpl &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess);

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserInfoImplCopyWith<_$RegisterUserInfoImpl> get copyWith =>
      __$$RegisterUserInfoImplCopyWithImpl<_$RegisterUserInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(Function onSuccess) registerUserInfo,
  }) {
    return registerUserInfo(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(Function onSuccess)? registerUserInfo,
  }) {
    return registerUserInfo?.call(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(Function onSuccess)? registerUserInfo,
    required TResult orElse(),
  }) {
    if (registerUserInfo != null) {
      return registerUserInfo(onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_RegisterUserInfo value) registerUserInfo,
  }) {
    return registerUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_RegisterUserInfo value)? registerUserInfo,
  }) {
    return registerUserInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_RegisterUserInfo value)? registerUserInfo,
    required TResult orElse(),
  }) {
    if (registerUserInfo != null) {
      return registerUserInfo(this);
    }
    return orElse();
  }
}

abstract class _RegisterUserInfo implements UserVerificationEvent {
  const factory _RegisterUserInfo(final Function onSuccess) =
      _$RegisterUserInfoImpl;

  Function get onSuccess;

  /// Create a copy of UserVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterUserInfoImplCopyWith<_$RegisterUserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserVerificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get surName => throw _privateConstructorUsedError;
  Option<Either<ApiException, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserVerificationStateCopyWith<UserVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVerificationStateCopyWith<$Res> {
  factory $UserVerificationStateCopyWith(UserVerificationState value,
          $Res Function(UserVerificationState) then) =
      _$UserVerificationStateCopyWithImpl<$Res, UserVerificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showErrorMessages,
      String firstName,
      String surName,
      Option<Either<ApiException, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$UserVerificationStateCopyWithImpl<$Res,
        $Val extends UserVerificationState>
    implements $UserVerificationStateCopyWith<$Res> {
  _$UserVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showErrorMessages = null,
    Object? firstName = null,
    Object? surName = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserVerificationStateImplCopyWith<$Res>
    implements $UserVerificationStateCopyWith<$Res> {
  factory _$$UserVerificationStateImplCopyWith(
          _$UserVerificationStateImpl value,
          $Res Function(_$UserVerificationStateImpl) then) =
      __$$UserVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showErrorMessages,
      String firstName,
      String surName,
      Option<Either<ApiException, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$UserVerificationStateImplCopyWithImpl<$Res>
    extends _$UserVerificationStateCopyWithImpl<$Res,
        _$UserVerificationStateImpl>
    implements _$$UserVerificationStateImplCopyWith<$Res> {
  __$$UserVerificationStateImplCopyWithImpl(_$UserVerificationStateImpl _value,
      $Res Function(_$UserVerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showErrorMessages = null,
    Object? firstName = null,
    Object? surName = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$UserVerificationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ));
  }
}

/// @nodoc

class _$UserVerificationStateImpl implements _UserVerificationState {
  const _$UserVerificationStateImpl(
      {required this.isLoading,
      required this.showErrorMessages,
      required this.firstName,
      required this.surName,
      required this.authFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final bool showErrorMessages;
  @override
  final String firstName;
  @override
  final String surName;
  @override
  final Option<Either<ApiException, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'UserVerificationState(isLoading: $isLoading, showErrorMessages: $showErrorMessages, firstName: $firstName, surName: $surName, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserVerificationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, showErrorMessages,
      firstName, surName, authFailureOrSuccessOption);

  /// Create a copy of UserVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserVerificationStateImplCopyWith<_$UserVerificationStateImpl>
      get copyWith => __$$UserVerificationStateImplCopyWithImpl<
          _$UserVerificationStateImpl>(this, _$identity);
}

abstract class _UserVerificationState implements UserVerificationState {
  const factory _UserVerificationState(
      {required final bool isLoading,
      required final bool showErrorMessages,
      required final String firstName,
      required final String surName,
      required final Option<Either<ApiException, Unit>>
          authFailureOrSuccessOption}) = _$UserVerificationStateImpl;

  @override
  bool get isLoading;
  @override
  bool get showErrorMessages;
  @override
  String get firstName;
  @override
  String get surName;
  @override
  Option<Either<ApiException, Unit>> get authFailureOrSuccessOption;

  /// Create a copy of UserVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserVerificationStateImplCopyWith<_$UserVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
