// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCurrentPositionImplCopyWith<$Res> {
  factory _$$GetCurrentPositionImplCopyWith(_$GetCurrentPositionImpl value,
          $Res Function(_$GetCurrentPositionImpl) then) =
      __$$GetCurrentPositionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentPositionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCurrentPositionImpl>
    implements _$$GetCurrentPositionImplCopyWith<$Res> {
  __$$GetCurrentPositionImplCopyWithImpl(_$GetCurrentPositionImpl _value,
      $Res Function(_$GetCurrentPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCurrentPositionImpl implements _GetCurrentPosition {
  const _$GetCurrentPositionImpl();

  @override
  String toString() {
    return 'HomeEvent.getCurrentPosition()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentPositionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) {
    return getCurrentPosition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) {
    return getCurrentPosition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) {
    if (getCurrentPosition != null) {
      return getCurrentPosition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) {
    return getCurrentPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) {
    return getCurrentPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) {
    if (getCurrentPosition != null) {
      return getCurrentPosition(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentPosition implements HomeEvent {
  const factory _GetCurrentPosition() = _$GetCurrentPositionImpl;
}

/// @nodoc
abstract class _$$GetCategoriesImplCopyWith<$Res> {
  factory _$$GetCategoriesImplCopyWith(
          _$GetCategoriesImpl value, $Res Function(_$GetCategoriesImpl) then) =
      __$$GetCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetCategoriesImpl>
    implements _$$GetCategoriesImplCopyWith<$Res> {
  __$$GetCategoriesImplCopyWithImpl(
      _$GetCategoriesImpl _value, $Res Function(_$GetCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCategoriesImpl implements _GetCategories {
  const _$GetCategoriesImpl();

  @override
  String toString() {
    return 'HomeEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategories implements HomeEvent {
  const factory _GetCategories() = _$GetCategoriesImpl;
}

/// @nodoc
abstract class _$$GetSubCategoriesImplCopyWith<$Res> {
  factory _$$GetSubCategoriesImplCopyWith(_$GetSubCategoriesImpl value,
          $Res Function(_$GetSubCategoriesImpl) then) =
      __$$GetSubCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int catIndex});
}

/// @nodoc
class __$$GetSubCategoriesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetSubCategoriesImpl>
    implements _$$GetSubCategoriesImplCopyWith<$Res> {
  __$$GetSubCategoriesImplCopyWithImpl(_$GetSubCategoriesImpl _value,
      $Res Function(_$GetSubCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catIndex = null,
  }) {
    return _then(_$GetSubCategoriesImpl(
      catIndex: null == catIndex
          ? _value.catIndex
          : catIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesImpl implements _GetSubCategories {
  const _$GetSubCategoriesImpl({required this.catIndex});

  @override
  final int catIndex;

  @override
  String toString() {
    return 'HomeEvent.getSubCategories(catIndex: $catIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesImpl &&
            (identical(other.catIndex, catIndex) ||
                other.catIndex == catIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catIndex);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      __$$GetSubCategoriesImplCopyWithImpl<_$GetSubCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) {
    return getSubCategories(catIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) {
    return getSubCategories?.call(catIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(catIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetSubCategories implements HomeEvent {
  const factory _GetSubCategories({required final int catIndex}) =
      _$GetSubCategoriesImpl;

  int get catIndex;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServicesImplCopyWith<$Res> {
  factory _$$GetServicesImplCopyWith(
          _$GetServicesImpl value, $Res Function(_$GetServicesImpl) then) =
      __$$GetServicesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetServicesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetServicesImpl>
    implements _$$GetServicesImplCopyWith<$Res> {
  __$$GetServicesImplCopyWithImpl(
      _$GetServicesImpl _value, $Res Function(_$GetServicesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetServicesImpl implements _GetServices {
  const _$GetServicesImpl();

  @override
  String toString() {
    return 'HomeEvent.getServices()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetServicesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) {
    return getServices();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) {
    return getServices?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) {
    return getServices(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) {
    return getServices?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) {
    if (getServices != null) {
      return getServices(this);
    }
    return orElse();
  }
}

abstract class _GetServices implements HomeEvent {
  const factory _GetServices() = _$GetServicesImpl;
}

/// @nodoc
abstract class _$$GetMastersImplCopyWith<$Res> {
  factory _$$GetMastersImplCopyWith(
          _$GetMastersImpl value, $Res Function(_$GetMastersImpl) then) =
      __$$GetMastersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng centerPosition});
}

/// @nodoc
class __$$GetMastersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetMastersImpl>
    implements _$$GetMastersImplCopyWith<$Res> {
  __$$GetMastersImplCopyWithImpl(
      _$GetMastersImpl _value, $Res Function(_$GetMastersImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? centerPosition = null,
  }) {
    return _then(_$GetMastersImpl(
      null == centerPosition
          ? _value.centerPosition
          : centerPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$GetMastersImpl implements _GetMasters {
  const _$GetMastersImpl(this.centerPosition);

  @override
  final LatLng centerPosition;

  @override
  String toString() {
    return 'HomeEvent.getMasters(centerPosition: $centerPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMastersImpl &&
            (identical(other.centerPosition, centerPosition) ||
                other.centerPosition == centerPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, centerPosition);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMastersImplCopyWith<_$GetMastersImpl> get copyWith =>
      __$$GetMastersImplCopyWithImpl<_$GetMastersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) {
    return getMasters(centerPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) {
    return getMasters?.call(centerPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) {
    if (getMasters != null) {
      return getMasters(centerPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) {
    return getMasters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) {
    return getMasters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) {
    if (getMasters != null) {
      return getMasters(this);
    }
    return orElse();
  }
}

abstract class _GetMasters implements HomeEvent {
  const factory _GetMasters(final LatLng centerPosition) = _$GetMastersImpl;

  LatLng get centerPosition;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMastersImplCopyWith<_$GetMastersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetFiltersImplCopyWith<$Res> {
  factory _$$SetFiltersImplCopyWith(
          _$SetFiltersImpl value, $Res Function(_$SetFiltersImpl) then) =
      __$$SetFiltersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int catId});
}

/// @nodoc
class __$$SetFiltersImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetFiltersImpl>
    implements _$$SetFiltersImplCopyWith<$Res> {
  __$$SetFiltersImplCopyWithImpl(
      _$SetFiltersImpl _value, $Res Function(_$SetFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catId = null,
  }) {
    return _then(_$SetFiltersImpl(
      null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetFiltersImpl implements _SetFilters {
  const _$SetFiltersImpl(this.catId);

  @override
  final int catId;

  @override
  String toString() {
    return 'HomeEvent.setFilters(catId: $catId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFiltersImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFiltersImplCopyWith<_$SetFiltersImpl> get copyWith =>
      __$$SetFiltersImplCopyWithImpl<_$SetFiltersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function() getCategories,
    required TResult Function(int catIndex) getSubCategories,
    required TResult Function() getServices,
    required TResult Function(LatLng centerPosition) getMasters,
    required TResult Function(int catId) setFilters,
  }) {
    return setFilters(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function()? getCategories,
    TResult? Function(int catIndex)? getSubCategories,
    TResult? Function()? getServices,
    TResult? Function(LatLng centerPosition)? getMasters,
    TResult? Function(int catId)? setFilters,
  }) {
    return setFilters?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function()? getCategories,
    TResult Function(int catIndex)? getSubCategories,
    TResult Function()? getServices,
    TResult Function(LatLng centerPosition)? getMasters,
    TResult Function(int catId)? setFilters,
    required TResult orElse(),
  }) {
    if (setFilters != null) {
      return setFilters(catId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
    required TResult Function(_GetServices value) getServices,
    required TResult Function(_GetMasters value) getMasters,
    required TResult Function(_SetFilters value) setFilters,
  }) {
    return setFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
    TResult? Function(_GetServices value)? getServices,
    TResult? Function(_GetMasters value)? getMasters,
    TResult? Function(_SetFilters value)? setFilters,
  }) {
    return setFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    TResult Function(_GetServices value)? getServices,
    TResult Function(_GetMasters value)? getMasters,
    TResult Function(_SetFilters value)? setFilters,
    required TResult orElse(),
  }) {
    if (setFilters != null) {
      return setFilters(this);
    }
    return orElse();
  }
}

abstract class _SetFilters implements HomeEvent {
  const factory _SetFilters(final int catId) = _$SetFiltersImpl;

  int get catId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetFiltersImplCopyWith<_$SetFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<int> get catFilterIndexes => throw _privateConstructorUsedError;
  int? get selectedCategory => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Position> get userPosition => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Category> get subCategories => throw _privateConstructorUsedError;
  List<UserSkills> get services => throw _privateConstructorUsedError;
  List<Master> get masters => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<int> catFilterIndexes,
      int? selectedCategory,
      bool isLoading,
      Option<Position> userPosition,
      List<Category> categories,
      List<Category> subCategories,
      List<UserSkills> services,
      List<Master> masters});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catFilterIndexes = null,
    Object? selectedCategory = freezed,
    Object? isLoading = null,
    Object? userPosition = null,
    Object? categories = null,
    Object? subCategories = null,
    Object? services = null,
    Object? masters = null,
  }) {
    return _then(_value.copyWith(
      catFilterIndexes: null == catFilterIndexes
          ? _value.catFilterIndexes
          : catFilterIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userPosition: null == userPosition
          ? _value.userPosition
          : userPosition // ignore: cast_nullable_to_non_nullable
              as Option<Position>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<UserSkills>,
      masters: null == masters
          ? _value.masters
          : masters // ignore: cast_nullable_to_non_nullable
              as List<Master>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> catFilterIndexes,
      int? selectedCategory,
      bool isLoading,
      Option<Position> userPosition,
      List<Category> categories,
      List<Category> subCategories,
      List<UserSkills> services,
      List<Master> masters});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? catFilterIndexes = null,
    Object? selectedCategory = freezed,
    Object? isLoading = null,
    Object? userPosition = null,
    Object? categories = null,
    Object? subCategories = null,
    Object? services = null,
    Object? masters = null,
  }) {
    return _then(_$HomeStateImpl(
      catFilterIndexes: null == catFilterIndexes
          ? _value._catFilterIndexes
          : catFilterIndexes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userPosition: null == userPosition
          ? _value.userPosition
          : userPosition // ignore: cast_nullable_to_non_nullable
              as Option<Position>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<UserSkills>,
      masters: null == masters
          ? _value._masters
          : masters // ignore: cast_nullable_to_non_nullable
              as List<Master>,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<int> catFilterIndexes,
      this.selectedCategory,
      required this.isLoading,
      required this.userPosition,
      required final List<Category> categories,
      required final List<Category> subCategories,
      required final List<UserSkills> services,
      required final List<Master> masters})
      : _catFilterIndexes = catFilterIndexes,
        _categories = categories,
        _subCategories = subCategories,
        _services = services,
        _masters = masters;

  final List<int> _catFilterIndexes;
  @override
  List<int> get catFilterIndexes {
    if (_catFilterIndexes is EqualUnmodifiableListView)
      return _catFilterIndexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catFilterIndexes);
  }

  @override
  final int? selectedCategory;
  @override
  final bool isLoading;
  @override
  final Option<Position> userPosition;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Category> _subCategories;
  @override
  List<Category> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  final List<UserSkills> _services;
  @override
  List<UserSkills> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  final List<Master> _masters;
  @override
  List<Master> get masters {
    if (_masters is EqualUnmodifiableListView) return _masters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_masters);
  }

  @override
  String toString() {
    return 'HomeState(catFilterIndexes: $catFilterIndexes, selectedCategory: $selectedCategory, isLoading: $isLoading, userPosition: $userPosition, categories: $categories, subCategories: $subCategories, services: $services, masters: $masters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._catFilterIndexes, _catFilterIndexes) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userPosition, userPosition) ||
                other.userPosition == userPosition) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories) &&
            const DeepCollectionEquality().equals(other._services, _services) &&
            const DeepCollectionEquality().equals(other._masters, _masters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_catFilterIndexes),
      selectedCategory,
      isLoading,
      userPosition,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_subCategories),
      const DeepCollectionEquality().hash(_services),
      const DeepCollectionEquality().hash(_masters));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<int> catFilterIndexes,
      final int? selectedCategory,
      required final bool isLoading,
      required final Option<Position> userPosition,
      required final List<Category> categories,
      required final List<Category> subCategories,
      required final List<UserSkills> services,
      required final List<Master> masters}) = _$HomeStateImpl;

  @override
  List<int> get catFilterIndexes;
  @override
  int? get selectedCategory;
  @override
  bool get isLoading;
  @override
  Option<Position> get userPosition;
  @override
  List<Category> get categories;
  @override
  List<Category> get subCategories;
  @override
  List<UserSkills> get services;
  @override
  List<Master> get masters;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
