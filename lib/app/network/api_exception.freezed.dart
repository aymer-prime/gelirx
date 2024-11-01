// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotModifiedImplCopyWith<$Res> {
  factory _$$NotModifiedImplCopyWith(
          _$NotModifiedImpl value, $Res Function(_$NotModifiedImpl) then) =
      __$$NotModifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotModifiedImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NotModifiedImpl>
    implements _$$NotModifiedImplCopyWith<$Res> {
  __$$NotModifiedImplCopyWithImpl(
      _$NotModifiedImpl _value, $Res Function(_$NotModifiedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotModifiedImpl extends _NotModified {
  const _$NotModifiedImpl() : super._();

  @override
  String toString() {
    return 'ApiException.notModified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotModifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) {
    return notModified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) {
    return notModified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) {
    return notModified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) {
    return notModified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) {
    if (notModified != null) {
      return notModified(this);
    }
    return orElse();
  }
}

abstract class _NotModified extends ApiException {
  const factory _NotModified() = _$NotModifiedImpl;
  const _NotModified._() : super._();
}

/// @nodoc
abstract class _$$UnautorizedImplCopyWith<$Res> {
  factory _$$UnautorizedImplCopyWith(
          _$UnautorizedImpl value, $Res Function(_$UnautorizedImpl) then) =
      __$$UnautorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnautorizedImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnautorizedImpl>
    implements _$$UnautorizedImplCopyWith<$Res> {
  __$$UnautorizedImplCopyWithImpl(
      _$UnautorizedImpl _value, $Res Function(_$UnautorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnautorizedImpl extends _Unautorized {
  const _$UnautorizedImpl() : super._();

  @override
  String toString() {
    return 'ApiException.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnautorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unautorized extends ApiException {
  const factory _Unautorized() = _$UnautorizedImpl;
  const _Unautorized._() : super._();
}

/// @nodoc
abstract class _$$ValidationImplCopyWith<$Res> {
  factory _$$ValidationImplCopyWith(
          _$ValidationImpl value, $Res Function(_$ValidationImpl) then) =
      __$$ValidationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> keys});
}

/// @nodoc
class __$$ValidationImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ValidationImpl>
    implements _$$ValidationImplCopyWith<$Res> {
  __$$ValidationImplCopyWithImpl(
      _$ValidationImpl _value, $Res Function(_$ValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
  }) {
    return _then(_$ValidationImpl(
      null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ValidationImpl extends _Validation {
  const _$ValidationImpl(final Map<String, dynamic> keys)
      : _keys = keys,
        super._();

  final Map<String, dynamic> _keys;
  @override
  Map<String, dynamic> get keys {
    if (_keys is EqualUnmodifiableMapView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_keys);
  }

  @override
  String toString() {
    return 'ApiException.badRequest(keys: $keys)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationImpl &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keys));

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationImplCopyWith<_$ValidationImpl> get copyWith =>
      __$$ValidationImplCopyWithImpl<_$ValidationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) {
    return badRequest(keys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) {
    return badRequest?.call(keys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(keys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _Validation extends ApiException {
  const factory _Validation(final Map<String, dynamic> keys) = _$ValidationImpl;
  const _Validation._() : super._();

  Map<String, dynamic> get keys;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationImplCopyWith<_$ValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnknownImpl extends _Unknown {
  const _$UnknownImpl() : super._();

  @override
  String toString() {
    return 'ApiException.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends ApiException {
  const factory _Unknown() = _$UnknownImpl;
  const _Unknown._() : super._();
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoConnectionImpl extends _NoConnection {
  const _$NoConnectionImpl() : super._();

  @override
  String toString() {
    return 'ApiException.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection extends ApiException {
  const factory _NoConnection() = _$NoConnectionImpl;
  const _NoConnection._() : super._();
}

/// @nodoc
abstract class _$$defaultExceptionImplCopyWith<$Res> {
  factory _$$defaultExceptionImplCopyWith(_$defaultExceptionImpl value,
          $Res Function(_$defaultExceptionImpl) then) =
      __$$defaultExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$defaultExceptionImplCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$defaultExceptionImpl>
    implements _$$defaultExceptionImplCopyWith<$Res> {
  __$$defaultExceptionImplCopyWithImpl(_$defaultExceptionImpl _value,
      $Res Function(_$defaultExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$defaultExceptionImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$defaultExceptionImpl extends _defaultException {
  const _$defaultExceptionImpl(this.code, this.message) : super._();

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.defaultException(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$defaultExceptionImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$defaultExceptionImplCopyWith<_$defaultExceptionImpl> get copyWith =>
      __$$defaultExceptionImplCopyWithImpl<_$defaultExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notModified,
    required TResult Function() unauthorized,
    required TResult Function(Map<String, dynamic> keys) badRequest,
    required TResult Function() unknown,
    required TResult Function() noConnection,
    required TResult Function(String code, String message) defaultException,
  }) {
    return defaultException(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notModified,
    TResult? Function()? unauthorized,
    TResult? Function(Map<String, dynamic> keys)? badRequest,
    TResult? Function()? unknown,
    TResult? Function()? noConnection,
    TResult? Function(String code, String message)? defaultException,
  }) {
    return defaultException?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notModified,
    TResult Function()? unauthorized,
    TResult Function(Map<String, dynamic> keys)? badRequest,
    TResult Function()? unknown,
    TResult Function()? noConnection,
    TResult Function(String code, String message)? defaultException,
    required TResult orElse(),
  }) {
    if (defaultException != null) {
      return defaultException(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotModified value) notModified,
    required TResult Function(_Unautorized value) unauthorized,
    required TResult Function(_Validation value) badRequest,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_defaultException value) defaultException,
  }) {
    return defaultException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotModified value)? notModified,
    TResult? Function(_Unautorized value)? unauthorized,
    TResult? Function(_Validation value)? badRequest,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_defaultException value)? defaultException,
  }) {
    return defaultException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotModified value)? notModified,
    TResult Function(_Unautorized value)? unauthorized,
    TResult Function(_Validation value)? badRequest,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_defaultException value)? defaultException,
    required TResult orElse(),
  }) {
    if (defaultException != null) {
      return defaultException(this);
    }
    return orElse();
  }
}

abstract class _defaultException extends ApiException {
  const factory _defaultException(final String code, final String message) =
      _$defaultExceptionImpl;
  const _defaultException._() : super._();

  String get code;
  String get message;

  /// Create a copy of ApiException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$defaultExceptionImplCopyWith<_$defaultExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
