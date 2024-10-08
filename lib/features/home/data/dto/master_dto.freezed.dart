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
  List<ServiceDto> get services => throw _privateConstructorUsedError;

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
      List<ServiceDto> services});
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
              as List<ServiceDto>,
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
      List<ServiceDto> services});
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
              as List<ServiceDto>,
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
      required final List<ServiceDto> services})
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
  final List<ServiceDto> _services;
  @override
  List<ServiceDto> get services {
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
      required final List<ServiceDto> services}) = _$MasterDtoImpl;

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
  List<ServiceDto> get services;

  /// Create a copy of MasterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterDtoImplCopyWith<_$MasterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceDto _$ServiceDtoFromJson(Map<String, dynamic> json) {
  return _ServiceDto.fromJson(json);
}

/// @nodoc
mixin _$ServiceDto {
  ImgDto get img => throw _privateConstructorUsedError;

  /// Serializes this ServiceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceDtoCopyWith<ServiceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDtoCopyWith<$Res> {
  factory $ServiceDtoCopyWith(
          ServiceDto value, $Res Function(ServiceDto) then) =
      _$ServiceDtoCopyWithImpl<$Res, ServiceDto>;
  @useResult
  $Res call({ImgDto img});

  $ImgDtoCopyWith<$Res> get img;
}

/// @nodoc
class _$ServiceDtoCopyWithImpl<$Res, $Val extends ServiceDto>
    implements $ServiceDtoCopyWith<$Res> {
  _$ServiceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
  }) {
    return _then(_value.copyWith(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as ImgDto,
    ) as $Val);
  }

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImgDtoCopyWith<$Res> get img {
    return $ImgDtoCopyWith<$Res>(_value.img, (value) {
      return _then(_value.copyWith(img: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceDtoImplCopyWith<$Res>
    implements $ServiceDtoCopyWith<$Res> {
  factory _$$ServiceDtoImplCopyWith(
          _$ServiceDtoImpl value, $Res Function(_$ServiceDtoImpl) then) =
      __$$ServiceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImgDto img});

  @override
  $ImgDtoCopyWith<$Res> get img;
}

/// @nodoc
class __$$ServiceDtoImplCopyWithImpl<$Res>
    extends _$ServiceDtoCopyWithImpl<$Res, _$ServiceDtoImpl>
    implements _$$ServiceDtoImplCopyWith<$Res> {
  __$$ServiceDtoImplCopyWithImpl(
      _$ServiceDtoImpl _value, $Res Function(_$ServiceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? img = null,
  }) {
    return _then(_$ServiceDtoImpl(
      img: null == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as ImgDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceDtoImpl implements _ServiceDto {
  const _$ServiceDtoImpl({required this.img});

  factory _$ServiceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceDtoImplFromJson(json);

  @override
  final ImgDto img;

  @override
  String toString() {
    return 'ServiceDto(img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDtoImpl &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, img);

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDtoImplCopyWith<_$ServiceDtoImpl> get copyWith =>
      __$$ServiceDtoImplCopyWithImpl<_$ServiceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceDtoImplToJson(
      this,
    );
  }
}

abstract class _ServiceDto implements ServiceDto {
  const factory _ServiceDto({required final ImgDto img}) = _$ServiceDtoImpl;

  factory _ServiceDto.fromJson(Map<String, dynamic> json) =
      _$ServiceDtoImpl.fromJson;

  @override
  ImgDto get img;

  /// Create a copy of ServiceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceDtoImplCopyWith<_$ServiceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
