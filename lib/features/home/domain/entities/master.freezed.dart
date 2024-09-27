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
  String get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get point => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

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
      String phone,
      String name,
      String surname,
      double latitude,
      double longitude,
      String point,
      List<Category> categories});
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
    Object? phone = null,
    Object? name = null,
    Object? surname = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
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
              as List<Category>,
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
      String phone,
      String name,
      String surname,
      double latitude,
      double longitude,
      String point,
      List<Category> categories});
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
    Object? phone = null,
    Object? name = null,
    Object? surname = null,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
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
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$MasterImpl implements _Master {
  const _$MasterImpl(
      {required this.id,
      required this.phone,
      required this.name,
      required this.surname,
      required this.latitude,
      required this.longitude,
      required this.point,
      required final List<Category> categories})
      : _categories = categories;

  @override
  final String id;
  @override
  final String phone;
  @override
  final String name;
  @override
  final String surname;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String point;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'Master(id: $id, phone: $phone, name: $name, surname: $surname, latitude: $latitude, longitude: $longitude, point: $point, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      phone,
      name,
      surname,
      latitude,
      longitude,
      point,
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
      required final String phone,
      required final String name,
      required final String surname,
      required final double latitude,
      required final double longitude,
      required final String point,
      required final List<Category> categories}) = _$MasterImpl;

  @override
  String get id;
  @override
  String get phone;
  @override
  String get name;
  @override
  String get surname;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get point;
  @override
  List<Category> get categories;

  /// Create a copy of Master
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterImplCopyWith<_$MasterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
