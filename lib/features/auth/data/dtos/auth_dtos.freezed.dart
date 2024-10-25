// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoDto _$UserInfoDtoFromJson(Map<String, dynamic> json) {
  return _UserInfoDto.fromJson(json);
}

/// @nodoc
mixin _$UserInfoDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "isMaster")
  String get isMaster => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "surname")
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "point")
  String get point => throw _privateConstructorUsedError;
  @JsonKey(name: "coins")
  String get coins => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "birthdate")
  String get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: "not_available")
  String get notAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "imageUrl")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<CategoryDto> get services => throw _privateConstructorUsedError;

  /// Serializes this UserInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoDtoCopyWith<UserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDtoCopyWith<$Res> {
  factory $UserInfoDtoCopyWith(
          UserInfoDto value, $Res Function(UserInfoDto) then) =
      _$UserInfoDtoCopyWithImpl<$Res, UserInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "isMaster") String isMaster,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "surname") String surname,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "point") String point,
      @JsonKey(name: "coins") String coins,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "birthdate") String birthDate,
      @JsonKey(name: "not_available") String notAvailable,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "services") List<CategoryDto> services});
}

/// @nodoc
class _$UserInfoDtoCopyWithImpl<$Res, $Val extends UserInfoDto>
    implements $UserInfoDtoCopyWith<$Res> {
  _$UserInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isMaster = null,
    Object? name = null,
    Object? surname = null,
    Object? phone = null,
    Object? point = null,
    Object? coins = null,
    Object? email = null,
    Object? birthDate = null,
    Object? notAvailable = null,
    Object? imageUrl = freezed,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      notAvailable: null == notAvailable
          ? _value.notAvailable
          : notAvailable // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoDtoImplCopyWith<$Res>
    implements $UserInfoDtoCopyWith<$Res> {
  factory _$$UserInfoDtoImplCopyWith(
          _$UserInfoDtoImpl value, $Res Function(_$UserInfoDtoImpl) then) =
      __$$UserInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "isMaster") String isMaster,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "surname") String surname,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "point") String point,
      @JsonKey(name: "coins") String coins,
      @JsonKey(name: "email") String email,
      @JsonKey(name: "birthdate") String birthDate,
      @JsonKey(name: "not_available") String notAvailable,
      @JsonKey(name: "imageUrl") String? imageUrl,
      @JsonKey(name: "services") List<CategoryDto> services});
}

/// @nodoc
class __$$UserInfoDtoImplCopyWithImpl<$Res>
    extends _$UserInfoDtoCopyWithImpl<$Res, _$UserInfoDtoImpl>
    implements _$$UserInfoDtoImplCopyWith<$Res> {
  __$$UserInfoDtoImplCopyWithImpl(
      _$UserInfoDtoImpl _value, $Res Function(_$UserInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isMaster = null,
    Object? name = null,
    Object? surname = null,
    Object? phone = null,
    Object? point = null,
    Object? coins = null,
    Object? email = null,
    Object? birthDate = null,
    Object? notAvailable = null,
    Object? imageUrl = freezed,
    Object? services = null,
  }) {
    return _then(_$UserInfoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      notAvailable: null == notAvailable
          ? _value.notAvailable
          : notAvailable // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<CategoryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoDtoImpl implements _UserInfoDto {
  const _$UserInfoDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "isMaster") required this.isMaster,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "surname") required this.surname,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "point") required this.point,
      @JsonKey(name: "coins") required this.coins,
      @JsonKey(name: "email") required this.email,
      @JsonKey(name: "birthdate") required this.birthDate,
      @JsonKey(name: "not_available") required this.notAvailable,
      @JsonKey(name: "imageUrl") required this.imageUrl,
      @JsonKey(name: "services") required final List<CategoryDto> services})
      : _services = services;

  factory _$UserInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "isMaster")
  final String isMaster;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "surname")
  final String surname;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "point")
  final String point;
  @override
  @JsonKey(name: "coins")
  final String coins;
  @override
  @JsonKey(name: "email")
  final String email;
  @override
  @JsonKey(name: "birthdate")
  final String birthDate;
  @override
  @JsonKey(name: "not_available")
  final String notAvailable;
  @override
  @JsonKey(name: "imageUrl")
  final String? imageUrl;
  final List<CategoryDto> _services;
  @override
  @JsonKey(name: "services")
  List<CategoryDto> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'UserInfoDto(id: $id, isMaster: $isMaster, name: $name, surname: $surname, phone: $phone, point: $point, coins: $coins, email: $email, birthDate: $birthDate, notAvailable: $notAvailable, imageUrl: $imageUrl, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isMaster, isMaster) ||
                other.isMaster == isMaster) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.notAvailable, notAvailable) ||
                other.notAvailable == notAvailable) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      isMaster,
      name,
      surname,
      phone,
      point,
      coins,
      email,
      birthDate,
      notAvailable,
      imageUrl,
      const DeepCollectionEquality().hash(_services));

  /// Create a copy of UserInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoDtoImplCopyWith<_$UserInfoDtoImpl> get copyWith =>
      __$$UserInfoDtoImplCopyWithImpl<_$UserInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _UserInfoDto implements UserInfoDto {
  const factory _UserInfoDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "isMaster") required final String isMaster,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "surname") required final String surname,
      @JsonKey(name: "phone") required final String phone,
      @JsonKey(name: "point") required final String point,
      @JsonKey(name: "coins") required final String coins,
      @JsonKey(name: "email") required final String email,
      @JsonKey(name: "birthdate") required final String birthDate,
      @JsonKey(name: "not_available") required final String notAvailable,
      @JsonKey(name: "imageUrl") required final String? imageUrl,
      @JsonKey(name: "services")
      required final List<CategoryDto> services}) = _$UserInfoDtoImpl;

  factory _UserInfoDto.fromJson(Map<String, dynamic> json) =
      _$UserInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "isMaster")
  String get isMaster;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "surname")
  String get surname;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "point")
  String get point;
  @override
  @JsonKey(name: "coins")
  String get coins;
  @override
  @JsonKey(name: "email")
  String get email;
  @override
  @JsonKey(name: "birthdate")
  String get birthDate;
  @override
  @JsonKey(name: "not_available")
  String get notAvailable;
  @override
  @JsonKey(name: "imageUrl")
  String? get imageUrl;
  @override
  @JsonKey(name: "services")
  List<CategoryDto> get services;

  /// Create a copy of UserInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoDtoImplCopyWith<_$UserInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserEntityDto _$UserEntityDtoFromJson(Map<String, dynamic> json) {
  return _UserEntityDto.fromJson(json);
}

/// @nodoc
mixin _$UserEntityDto {
  @JsonKey(name: "master")
  int get isMaster => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;

  /// Serializes this UserEntityDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserEntityDtoCopyWith<UserEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityDtoCopyWith<$Res> {
  factory $UserEntityDtoCopyWith(
          UserEntityDto value, $Res Function(UserEntityDto) then) =
      _$UserEntityDtoCopyWithImpl<$Res, UserEntityDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "master") int isMaster,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "token") String token});
}

/// @nodoc
class _$UserEntityDtoCopyWithImpl<$Res, $Val extends UserEntityDto>
    implements $UserEntityDtoCopyWith<$Res> {
  _$UserEntityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMaster = null,
    Object? userId = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityDtoImplCopyWith<$Res>
    implements $UserEntityDtoCopyWith<$Res> {
  factory _$$UserEntityDtoImplCopyWith(
          _$UserEntityDtoImpl value, $Res Function(_$UserEntityDtoImpl) then) =
      __$$UserEntityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "master") int isMaster,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "token") String token});
}

/// @nodoc
class __$$UserEntityDtoImplCopyWithImpl<$Res>
    extends _$UserEntityDtoCopyWithImpl<$Res, _$UserEntityDtoImpl>
    implements _$$UserEntityDtoImplCopyWith<$Res> {
  __$$UserEntityDtoImplCopyWithImpl(
      _$UserEntityDtoImpl _value, $Res Function(_$UserEntityDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMaster = null,
    Object? userId = null,
    Object? token = null,
  }) {
    return _then(_$UserEntityDtoImpl(
      isMaster: null == isMaster
          ? _value.isMaster
          : isMaster // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityDtoImpl implements _UserEntityDto {
  const _$UserEntityDtoImpl(
      {@JsonKey(name: "master") required this.isMaster,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "token") required this.token});

  factory _$UserEntityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityDtoImplFromJson(json);

  @override
  @JsonKey(name: "master")
  final int isMaster;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "token")
  final String token;

  @override
  String toString() {
    return 'UserEntityDto(isMaster: $isMaster, userId: $userId, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityDtoImpl &&
            (identical(other.isMaster, isMaster) ||
                other.isMaster == isMaster) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isMaster, userId, token);

  /// Create a copy of UserEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityDtoImplCopyWith<_$UserEntityDtoImpl> get copyWith =>
      __$$UserEntityDtoImplCopyWithImpl<_$UserEntityDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityDtoImplToJson(
      this,
    );
  }
}

abstract class _UserEntityDto implements UserEntityDto {
  const factory _UserEntityDto(
          {@JsonKey(name: "master") required final int isMaster,
          @JsonKey(name: "user_id") required final String userId,
          @JsonKey(name: "token") required final String token}) =
      _$UserEntityDtoImpl;

  factory _UserEntityDto.fromJson(Map<String, dynamic> json) =
      _$UserEntityDtoImpl.fromJson;

  @override
  @JsonKey(name: "master")
  int get isMaster;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "token")
  String get token;

  /// Create a copy of UserEntityDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserEntityDtoImplCopyWith<_$UserEntityDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
