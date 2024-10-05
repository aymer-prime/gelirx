// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MasterDto _$MasterDtoFromJson(Map<String, dynamic> json) {
  return _MasterDto.fromJson(json);
}

/// @nodoc
mixin _$MasterDto {
  String get id =>
      throw _privateConstructorUsedError; // required String? phone,
// required String? name,
// required String? surname,
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get point => throw _privateConstructorUsedError;
  List<ImgDto> get services => throw _privateConstructorUsedError;

  /// Serializes this MasterDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MasterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterDtoCopyWith<MasterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterDtoCopyWith<$Res> {
  factory $MasterDtoCopyWith(MasterDto value, $Res Function(MasterDto) then) =
      _$MasterDtoCopyWithImpl<$Res, MasterDto>;
  @useResult
  $Res call(
      {String id,
      String latitude,
      String longitude,
      String point,
      List<ImgDto> services});
}

/// @nodoc
class _$MasterDtoCopyWithImpl<$Res, $Val extends MasterDto>
    implements $MasterDtoCopyWith<$Res> {
  _$MasterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? point = null,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ImgDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterDtoImplCopyWith<$Res>
    implements $MasterDtoCopyWith<$Res> {
  factory _$$MasterDtoImplCopyWith(
          _$MasterDtoImpl value, $Res Function(_$MasterDtoImpl) then) =
      __$$MasterDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String latitude,
      String longitude,
      String point,
      List<ImgDto> services});
}

/// @nodoc
class __$$MasterDtoImplCopyWithImpl<$Res>
    extends _$MasterDtoCopyWithImpl<$Res, _$MasterDtoImpl>
    implements _$$MasterDtoImplCopyWith<$Res> {
  __$$MasterDtoImplCopyWithImpl(
      _$MasterDtoImpl _value, $Res Function(_$MasterDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? point = null,
    Object? services = null,
  }) {
    return _then(_$MasterDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ImgDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MasterDtoImpl implements _MasterDto {
  const _$MasterDtoImpl(
      {required this.id,
      required this.latitude,
      required this.longitude,
      required this.point,
      required final List<ImgDto> services})
      : _services = services;

  factory _$MasterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MasterDtoImplFromJson(json);

  @override
  final String id;
// required String? phone,
// required String? name,
// required String? surname,
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String point;
  final List<ImgDto> _services;
  @override
  List<ImgDto> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'MasterDto(id: $id, latitude: $latitude, longitude: $longitude, point: $point, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.point, point) || other.point == point) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, latitude, longitude, point,
      const DeepCollectionEquality().hash(_services));

  /// Create a copy of MasterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterDtoImplCopyWith<_$MasterDtoImpl> get copyWith =>
      __$$MasterDtoImplCopyWithImpl<_$MasterDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasterDtoImplToJson(
      this,
    );
  }
}

abstract class _MasterDto implements MasterDto {
  const factory _MasterDto(
      {required final String id,
      required final String latitude,
      required final String longitude,
      required final String point,
      required final List<ImgDto> services}) = _$MasterDtoImpl;

  factory _MasterDto.fromJson(Map<String, dynamic> json) =
      _$MasterDtoImpl.fromJson;

  @override
  String get id; // required String? phone,
// required String? name,
// required String? surname,
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get point;
  @override
  List<ImgDto> get services;

  /// Create a copy of MasterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterDtoImplCopyWith<_$MasterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
