// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Master {
  String get id => throw _privateConstructorUsedError; // required String phone,
// required String name,
// required String surname,
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get point => throw _privateConstructorUsedError;
  List<Img> get categories => throw _privateConstructorUsedError;

  /// Create a copy of Master
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterCopyWith<Master> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterCopyWith<$Res> {
  factory $MasterCopyWith(Master value, $Res Function(Master) then) =
      _$MasterCopyWithImpl<$Res, Master>;
  @useResult
  $Res call(
      {String id,
      double latitude,
      double longitude,
      String point,
      List<Img> categories});
}

/// @nodoc
class _$MasterCopyWithImpl<$Res, $Val extends Master>
    implements $MasterCopyWith<$Res> {
  _$MasterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Master
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? point = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Img>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterImplCopyWith<$Res> implements $MasterCopyWith<$Res> {
  factory _$$MasterImplCopyWith(
          _$MasterImpl value, $Res Function(_$MasterImpl) then) =
      __$$MasterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      double latitude,
      double longitude,
      String point,
      List<Img> categories});
}

/// @nodoc
class __$$MasterImplCopyWithImpl<$Res>
    extends _$MasterCopyWithImpl<$Res, _$MasterImpl>
    implements _$$MasterImplCopyWith<$Res> {
  __$$MasterImplCopyWithImpl(
      _$MasterImpl _value, $Res Function(_$MasterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Master
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? point = null,
    Object? categories = null,
  }) {
    return _then(_$MasterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Img>,
    ));
  }
}

/// @nodoc

class _$MasterImpl implements _Master {
  const _$MasterImpl(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.point,
      required final List<Img> categories})
      : _categories = categories;

  @override
  final String id;
// required String phone,
// required String name,
// required String surname,
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String point;
  final List<Img> _categories;
  @override
  List<Img> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'Master(id: $id, latitude: $latitude, longitude: $longitude, point: $point, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude, point,
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of Master
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterImplCopyWith<_$MasterImpl> get copyWith =>
      __$$MasterImplCopyWithImpl<_$MasterImpl>(this, _$identity);
}

abstract class _Master implements Master {
  const factory _Master(
      {required final String id,
      required final double latitude,
      required final double longitude,
      required final String point,
      required final List<Img> categories}) = _$MasterImpl;

  @override
  String get id; // required String phone,
// required String name,
// required String surname,
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get point;
  @override
  List<Img> get categories;

  /// Create a copy of Master
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterImplCopyWith<_$MasterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
