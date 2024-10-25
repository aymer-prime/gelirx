// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoriteEvent {
  UserEntity? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) getFavoriteMasters,
    required TResult Function(String masterId, UserEntity? user) setFavorite,
    required TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)
        removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? getFavoriteMasters,
    TResult? Function(String masterId, UserEntity? user)? setFavorite,
    TResult? Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? getFavoriteMasters,
    TResult Function(String masterId, UserEntity? user)? setFavorite,
    TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavoriteMasters value) getFavoriteMasters,
    required TResult Function(_SetFavorite value) setFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult? Function(_SetFavorite value)? setFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult Function(_SetFavorite value)? setFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteEventCopyWith<FavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
  @useResult
  $Res call({UserEntity? user});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetFavoriteMastersImplCopyWith<$Res>
    implements $FavoriteEventCopyWith<$Res> {
  factory _$$GetFavoriteMastersImplCopyWith(_$GetFavoriteMastersImpl value,
          $Res Function(_$GetFavoriteMastersImpl) then) =
      __$$GetFavoriteMastersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity? user});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$GetFavoriteMastersImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$GetFavoriteMastersImpl>
    implements _$$GetFavoriteMastersImplCopyWith<$Res> {
  __$$GetFavoriteMastersImplCopyWithImpl(_$GetFavoriteMastersImpl _value,
      $Res Function(_$GetFavoriteMastersImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$GetFavoriteMastersImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$GetFavoriteMastersImpl implements _GetFavoriteMasters {
  const _$GetFavoriteMastersImpl(this.user);

  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'FavoriteEvent.getFavoriteMasters(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoriteMastersImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoriteMastersImplCopyWith<_$GetFavoriteMastersImpl> get copyWith =>
      __$$GetFavoriteMastersImplCopyWithImpl<_$GetFavoriteMastersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) getFavoriteMasters,
    required TResult Function(String masterId, UserEntity? user) setFavorite,
    required TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)
        removeFavorite,
  }) {
    return getFavoriteMasters(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? getFavoriteMasters,
    TResult? Function(String masterId, UserEntity? user)? setFavorite,
    TResult? Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
  }) {
    return getFavoriteMasters?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? getFavoriteMasters,
    TResult Function(String masterId, UserEntity? user)? setFavorite,
    TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
    required TResult orElse(),
  }) {
    if (getFavoriteMasters != null) {
      return getFavoriteMasters(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavoriteMasters value) getFavoriteMasters,
    required TResult Function(_SetFavorite value) setFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return getFavoriteMasters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult? Function(_SetFavorite value)? setFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return getFavoriteMasters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult Function(_SetFavorite value)? setFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (getFavoriteMasters != null) {
      return getFavoriteMasters(this);
    }
    return orElse();
  }
}

abstract class _GetFavoriteMasters implements FavoriteEvent {
  const factory _GetFavoriteMasters(final UserEntity? user) =
      _$GetFavoriteMastersImpl;

  @override
  UserEntity? get user;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFavoriteMastersImplCopyWith<_$GetFavoriteMastersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetFavoriteImplCopyWith<$Res>
    implements $FavoriteEventCopyWith<$Res> {
  factory _$$SetFavoriteImplCopyWith(
          _$SetFavoriteImpl value, $Res Function(_$SetFavoriteImpl) then) =
      __$$SetFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String masterId, UserEntity? user});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$SetFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$SetFavoriteImpl>
    implements _$$SetFavoriteImplCopyWith<$Res> {
  __$$SetFavoriteImplCopyWithImpl(
      _$SetFavoriteImpl _value, $Res Function(_$SetFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterId = null,
    Object? user = freezed,
  }) {
    return _then(_$SetFavoriteImpl(
      null == masterId
          ? _value.masterId
          : masterId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$SetFavoriteImpl implements _SetFavorite {
  const _$SetFavoriteImpl(this.masterId, this.user);

  @override
  final String masterId;
  @override
  final UserEntity? user;

  @override
  String toString() {
    return 'FavoriteEvent.setFavorite(masterId: $masterId, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFavoriteImpl &&
            (identical(other.masterId, masterId) ||
                other.masterId == masterId) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, masterId, user);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFavoriteImplCopyWith<_$SetFavoriteImpl> get copyWith =>
      __$$SetFavoriteImplCopyWithImpl<_$SetFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) getFavoriteMasters,
    required TResult Function(String masterId, UserEntity? user) setFavorite,
    required TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)
        removeFavorite,
  }) {
    return setFavorite(masterId, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? getFavoriteMasters,
    TResult? Function(String masterId, UserEntity? user)? setFavorite,
    TResult? Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
  }) {
    return setFavorite?.call(masterId, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? getFavoriteMasters,
    TResult Function(String masterId, UserEntity? user)? setFavorite,
    TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
    required TResult orElse(),
  }) {
    if (setFavorite != null) {
      return setFavorite(masterId, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavoriteMasters value) getFavoriteMasters,
    required TResult Function(_SetFavorite value) setFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return setFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult? Function(_SetFavorite value)? setFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return setFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult Function(_SetFavorite value)? setFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (setFavorite != null) {
      return setFavorite(this);
    }
    return orElse();
  }
}

abstract class _SetFavorite implements FavoriteEvent {
  const factory _SetFavorite(final String masterId, final UserEntity? user) =
      _$SetFavoriteImpl;

  String get masterId;
  @override
  UserEntity? get user;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetFavoriteImplCopyWith<_$SetFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteImplCopyWith<$Res>
    implements $FavoriteEventCopyWith<$Res> {
  factory _$$RemoveFavoriteImplCopyWith(_$RemoveFavoriteImpl value,
          $Res Function(_$RemoveFavoriteImpl) then) =
      __$$RemoveFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String masterId, UserEntity? user, List<Favorite> currentFavs});

  @override
  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$RemoveFavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$RemoveFavoriteImpl>
    implements _$$RemoveFavoriteImplCopyWith<$Res> {
  __$$RemoveFavoriteImplCopyWithImpl(
      _$RemoveFavoriteImpl _value, $Res Function(_$RemoveFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterId = null,
    Object? user = freezed,
    Object? currentFavs = null,
  }) {
    return _then(_$RemoveFavoriteImpl(
      null == masterId
          ? _value.masterId
          : masterId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      null == currentFavs
          ? _value._currentFavs
          : currentFavs // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteImpl implements _RemoveFavorite {
  const _$RemoveFavoriteImpl(
      this.masterId, this.user, final List<Favorite> currentFavs)
      : _currentFavs = currentFavs;

  @override
  final String masterId;
  @override
  final UserEntity? user;
  final List<Favorite> _currentFavs;
  @override
  List<Favorite> get currentFavs {
    if (_currentFavs is EqualUnmodifiableListView) return _currentFavs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentFavs);
  }

  @override
  String toString() {
    return 'FavoriteEvent.removeFavorite(masterId: $masterId, user: $user, currentFavs: $currentFavs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteImpl &&
            (identical(other.masterId, masterId) ||
                other.masterId == masterId) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._currentFavs, _currentFavs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, masterId, user,
      const DeepCollectionEquality().hash(_currentFavs));

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      __$$RemoveFavoriteImplCopyWithImpl<_$RemoveFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserEntity? user) getFavoriteMasters,
    required TResult Function(String masterId, UserEntity? user) setFavorite,
    required TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)
        removeFavorite,
  }) {
    return removeFavorite(masterId, user, currentFavs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserEntity? user)? getFavoriteMasters,
    TResult? Function(String masterId, UserEntity? user)? setFavorite,
    TResult? Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
  }) {
    return removeFavorite?.call(masterId, user, currentFavs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserEntity? user)? getFavoriteMasters,
    TResult Function(String masterId, UserEntity? user)? setFavorite,
    TResult Function(
            String masterId, UserEntity? user, List<Favorite> currentFavs)?
        removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(masterId, user, currentFavs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFavoriteMasters value) getFavoriteMasters,
    required TResult Function(_SetFavorite value) setFavorite,
    required TResult Function(_RemoveFavorite value) removeFavorite,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult? Function(_SetFavorite value)? setFavorite,
    TResult? Function(_RemoveFavorite value)? removeFavorite,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFavoriteMasters value)? getFavoriteMasters,
    TResult Function(_SetFavorite value)? setFavorite,
    TResult Function(_RemoveFavorite value)? removeFavorite,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavorite implements FavoriteEvent {
  const factory _RemoveFavorite(final String masterId, final UserEntity? user,
      final List<Favorite> currentFavs) = _$RemoveFavoriteImpl;

  String get masterId;
  @override
  UserEntity? get user;
  List<Favorite> get currentFavs;

  /// Create a copy of FavoriteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFavoriteImplCopyWith<_$RemoveFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Favorite> favorites) loadSuccess,
    required TResult Function(ApiException apiException) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Favorite> favorites)? loadSuccess,
    TResult? Function(ApiException apiException)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Favorite> favorites)? loadSuccess,
    TResult Function(ApiException apiException)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavoriteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Favorite> favorites) loadSuccess,
    required TResult Function(ApiException apiException) loadFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Favorite> favorites)? loadSuccess,
    TResult? Function(ApiException apiException)? loadFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Favorite> favorites)? loadSuccess,
    TResult Function(ApiException apiException)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Favorite> favorites) loadSuccess,
    required TResult Function(ApiException apiException) loadFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Favorite> favorites)? loadSuccess,
    TResult? Function(ApiException apiException)? loadFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Favorite> favorites)? loadSuccess,
    TResult Function(ApiException apiException)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoriteState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Favorite> favorites});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl implements _LoadSuccess {
  const _$LoadSuccessImpl(final List<Favorite> favorites)
      : _favorites = favorites;

  final List<Favorite> _favorites;
  @override
  List<Favorite> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'FavoriteState.loadSuccess(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Favorite> favorites) loadSuccess,
    required TResult Function(ApiException apiException) loadFailed,
  }) {
    return loadSuccess(favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Favorite> favorites)? loadSuccess,
    TResult? Function(ApiException apiException)? loadFailed,
  }) {
    return loadSuccess?.call(favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Favorite> favorites)? loadSuccess,
    TResult Function(ApiException apiException)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(favorites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements FavoriteState {
  const factory _LoadSuccess(final List<Favorite> favorites) =
      _$LoadSuccessImpl;

  List<Favorite> get favorites;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailedImplCopyWith<$Res> {
  factory _$$LoadFailedImplCopyWith(
          _$LoadFailedImpl value, $Res Function(_$LoadFailedImpl) then) =
      __$$LoadFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiException apiException});

  $ApiExceptionCopyWith<$Res> get apiException;
}

/// @nodoc
class __$$LoadFailedImplCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$LoadFailedImpl>
    implements _$$LoadFailedImplCopyWith<$Res> {
  __$$LoadFailedImplCopyWithImpl(
      _$LoadFailedImpl _value, $Res Function(_$LoadFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiException = null,
  }) {
    return _then(_$LoadFailedImpl(
      null == apiException
          ? _value.apiException
          : apiException // ignore: cast_nullable_to_non_nullable
              as ApiException,
    ));
  }

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiExceptionCopyWith<$Res> get apiException {
    return $ApiExceptionCopyWith<$Res>(_value.apiException, (value) {
      return _then(_value.copyWith(apiException: value));
    });
  }
}

/// @nodoc

class _$LoadFailedImpl implements _LoadFailed {
  const _$LoadFailedImpl(this.apiException);

  @override
  final ApiException apiException;

  @override
  String toString() {
    return 'FavoriteState.loadFailed(apiException: $apiException)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailedImpl &&
            (identical(other.apiException, apiException) ||
                other.apiException == apiException));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiException);

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailedImplCopyWith<_$LoadFailedImpl> get copyWith =>
      __$$LoadFailedImplCopyWithImpl<_$LoadFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Favorite> favorites) loadSuccess,
    required TResult Function(ApiException apiException) loadFailed,
  }) {
    return loadFailed(apiException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Favorite> favorites)? loadSuccess,
    TResult? Function(ApiException apiException)? loadFailed,
  }) {
    return loadFailed?.call(apiException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Favorite> favorites)? loadSuccess,
    TResult Function(ApiException apiException)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(apiException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailed value) loadFailed,
  }) {
    return loadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailed value)? loadFailed,
  }) {
    return loadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailed value)? loadFailed,
    required TResult orElse(),
  }) {
    if (loadFailed != null) {
      return loadFailed(this);
    }
    return orElse();
  }
}

abstract class _LoadFailed implements FavoriteState {
  const factory _LoadFailed(final ApiException apiException) = _$LoadFailedImpl;

  ApiException get apiException;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadFailedImplCopyWith<_$LoadFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
