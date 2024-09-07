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
    required TResult Function(int range) getRange,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function(int range)? getRange,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function(int range)? getRange,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetRange value) getRange,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetRange value)? getRange,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetRange value)? getRange,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
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
    required TResult Function(int range) getRange,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
  }) {
    return getCurrentPosition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function(int range)? getRange,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return getCurrentPosition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function(int range)? getRange,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
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
    required TResult Function(_GetRange value) getRange,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
  }) {
    return getCurrentPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetRange value)? getRange,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
  }) {
    return getCurrentPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetRange value)? getRange,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
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
abstract class _$$GetRangeImplCopyWith<$Res> {
  factory _$$GetRangeImplCopyWith(
          _$GetRangeImpl value, $Res Function(_$GetRangeImpl) then) =
      __$$GetRangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int range});
}

/// @nodoc
class __$$GetRangeImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetRangeImpl>
    implements _$$GetRangeImplCopyWith<$Res> {
  __$$GetRangeImplCopyWithImpl(
      _$GetRangeImpl _value, $Res Function(_$GetRangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = null,
  }) {
    return _then(_$GetRangeImpl(
      null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetRangeImpl implements _GetRange {
  const _$GetRangeImpl(this.range);

  @override
  final int range;

  @override
  String toString() {
    return 'HomeEvent.getRange(range: $range)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRangeImpl &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRangeImplCopyWith<_$GetRangeImpl> get copyWith =>
      __$$GetRangeImplCopyWithImpl<_$GetRangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentPosition,
    required TResult Function(int range) getRange,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
  }) {
    return getRange(range);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function(int range)? getRange,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return getRange?.call(range);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function(int range)? getRange,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getRange != null) {
      return getRange(range);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetRange value) getRange,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
  }) {
    return getRange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetRange value)? getRange,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
  }) {
    return getRange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetRange value)? getRange,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getRange != null) {
      return getRange(this);
    }
    return orElse();
  }
}

abstract class _GetRange implements HomeEvent {
  const factory _GetRange(final int range) = _$GetRangeImpl;

  int get range;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRangeImplCopyWith<_$GetRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(int range) getRange,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function(int range)? getRange,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function(int range)? getRange,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
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
    required TResult Function(_GetRange value) getRange,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetRange value)? getRange,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetRange value)? getRange,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
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
  $Res call({String catId});
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
    Object? catId = null,
  }) {
    return _then(_$GetSubCategoriesImpl(
      catId: null == catId
          ? _value.catId
          : catId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesImpl implements _GetSubCategories {
  const _$GetSubCategoriesImpl({required this.catId});

  @override
  final String catId;

  @override
  String toString() {
    return 'HomeEvent.getSubCategories(catId: $catId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesImpl &&
            (identical(other.catId, catId) || other.catId == catId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, catId);

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
    required TResult Function(int range) getRange,
    required TResult Function() getCategories,
    required TResult Function(String catId) getSubCategories,
  }) {
    return getSubCategories(catId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentPosition,
    TResult? Function(int range)? getRange,
    TResult? Function()? getCategories,
    TResult? Function(String catId)? getSubCategories,
  }) {
    return getSubCategories?.call(catId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentPosition,
    TResult Function(int range)? getRange,
    TResult Function()? getCategories,
    TResult Function(String catId)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(catId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentPosition value) getCurrentPosition,
    required TResult Function(_GetRange value) getRange,
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetSubCategories value) getSubCategories,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult? Function(_GetRange value)? getRange,
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetSubCategories value)? getSubCategories,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentPosition value)? getCurrentPosition,
    TResult Function(_GetRange value)? getRange,
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class _GetSubCategories implements HomeEvent {
  const factory _GetSubCategories({required final String catId}) =
      _$GetSubCategoriesImpl;

  String get catId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  int get range => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Position> get userPosition => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

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
      {int range,
      bool isLoading,
      Option<Position> userPosition,
      List<Category> categories});
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
    Object? range = null,
    Object? isLoading = null,
    Object? userPosition = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
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
      {int range,
      bool isLoading,
      Option<Position> userPosition,
      List<Category> categories});
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
    Object? range = null,
    Object? isLoading = null,
    Object? userPosition = null,
    Object? categories = null,
  }) {
    return _then(_$HomeStateImpl(
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.range,
      required this.isLoading,
      required this.userPosition,
      required final List<Category> categories})
      : _categories = categories;

  @override
  final int range;
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

  @override
  String toString() {
    return 'HomeState(range: $range, isLoading: $isLoading, userPosition: $userPosition, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userPosition, userPosition) ||
                other.userPosition == userPosition) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, isLoading, userPosition,
      const DeepCollectionEquality().hash(_categories));

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
      {required final int range,
      required final bool isLoading,
      required final Option<Position> userPosition,
      required final List<Category> categories}) = _$HomeStateImpl;

  @override
  int get range;
  @override
  bool get isLoading;
  @override
  Option<Position> get userPosition;
  @override
  List<Category> get categories;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
