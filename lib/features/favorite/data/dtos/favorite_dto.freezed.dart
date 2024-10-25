// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoriteDto _$FavoriteDtoFromJson(Map<String, dynamic> json) {
  return _FavoriteDto.fromJson(json);
}

/// @nodoc
mixin _$FavoriteDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "surname")
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(name: "total_comment")
  int get totalComment => throw _privateConstructorUsedError;
  @JsonKey(name: "point")
  int get point => throw _privateConstructorUsedError;
  @JsonKey(name: "total_interaction")
  int get totalInteraction => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "services")
  List<FavoriteServiceInfoDto> get services =>
      throw _privateConstructorUsedError;

  /// Serializes this FavoriteDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteDtoCopyWith<FavoriteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteDtoCopyWith<$Res> {
  factory $FavoriteDtoCopyWith(
          FavoriteDto value, $Res Function(FavoriteDto) then) =
      _$FavoriteDtoCopyWithImpl<$Res, FavoriteDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "surname") String surname,
      @JsonKey(name: "total_comment") int totalComment,
      @JsonKey(name: "point") int point,
      @JsonKey(name: "total_interaction") int totalInteraction,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "services") List<FavoriteServiceInfoDto> services});
}

/// @nodoc
class _$FavoriteDtoCopyWithImpl<$Res, $Val extends FavoriteDto>
    implements $FavoriteDtoCopyWith<$Res> {
  _$FavoriteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? totalComment = null,
    Object? point = null,
    Object? totalInteraction = null,
    Object? image = freezed,
    Object? services = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      totalComment: null == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      totalInteraction: null == totalInteraction
          ? _value.totalInteraction
          : totalInteraction // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<FavoriteServiceInfoDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteDtoImplCopyWith<$Res>
    implements $FavoriteDtoCopyWith<$Res> {
  factory _$$FavoriteDtoImplCopyWith(
          _$FavoriteDtoImpl value, $Res Function(_$FavoriteDtoImpl) then) =
      __$$FavoriteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "surname") String surname,
      @JsonKey(name: "total_comment") int totalComment,
      @JsonKey(name: "point") int point,
      @JsonKey(name: "total_interaction") int totalInteraction,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "services") List<FavoriteServiceInfoDto> services});
}

/// @nodoc
class __$$FavoriteDtoImplCopyWithImpl<$Res>
    extends _$FavoriteDtoCopyWithImpl<$Res, _$FavoriteDtoImpl>
    implements _$$FavoriteDtoImplCopyWith<$Res> {
  __$$FavoriteDtoImplCopyWithImpl(
      _$FavoriteDtoImpl _value, $Res Function(_$FavoriteDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? totalComment = null,
    Object? point = null,
    Object? totalInteraction = null,
    Object? image = freezed,
    Object? services = null,
  }) {
    return _then(_$FavoriteDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      totalComment: null == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      totalInteraction: null == totalInteraction
          ? _value.totalInteraction
          : totalInteraction // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<FavoriteServiceInfoDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteDtoImpl implements _FavoriteDto {
  const _$FavoriteDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "surname") required this.surname,
      @JsonKey(name: "total_comment") required this.totalComment,
      @JsonKey(name: "point") required this.point,
      @JsonKey(name: "total_interaction") required this.totalInteraction,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "services")
      required final List<FavoriteServiceInfoDto> services})
      : _services = services;

  factory _$FavoriteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "surname")
  final String surname;
  @override
  @JsonKey(name: "total_comment")
  final int totalComment;
  @override
  @JsonKey(name: "point")
  final int point;
  @override
  @JsonKey(name: "total_interaction")
  final int totalInteraction;
  @override
  @JsonKey(name: "image")
  final String? image;
  final List<FavoriteServiceInfoDto> _services;
  @override
  @JsonKey(name: "services")
  List<FavoriteServiceInfoDto> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'FavoriteDto(id: $id, name: $name, surname: $surname, totalComment: $totalComment, point: $point, totalInteraction: $totalInteraction, image: $image, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.totalComment, totalComment) ||
                other.totalComment == totalComment) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.totalInteraction, totalInteraction) ||
                other.totalInteraction == totalInteraction) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      surname,
      totalComment,
      point,
      totalInteraction,
      image,
      const DeepCollectionEquality().hash(_services));

  /// Create a copy of FavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteDtoImplCopyWith<_$FavoriteDtoImpl> get copyWith =>
      __$$FavoriteDtoImplCopyWithImpl<_$FavoriteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteDtoImplToJson(
      this,
    );
  }
}

abstract class _FavoriteDto implements FavoriteDto {
  const factory _FavoriteDto(
      {@JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "surname") required final String surname,
      @JsonKey(name: "total_comment") required final int totalComment,
      @JsonKey(name: "point") required final int point,
      @JsonKey(name: "total_interaction") required final int totalInteraction,
      @JsonKey(name: "image") required final String? image,
      @JsonKey(name: "services")
      required final List<FavoriteServiceInfoDto>
          services}) = _$FavoriteDtoImpl;

  factory _FavoriteDto.fromJson(Map<String, dynamic> json) =
      _$FavoriteDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "surname")
  String get surname;
  @override
  @JsonKey(name: "total_comment")
  int get totalComment;
  @override
  @JsonKey(name: "point")
  int get point;
  @override
  @JsonKey(name: "total_interaction")
  int get totalInteraction;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "services")
  List<FavoriteServiceInfoDto> get services;

  /// Create a copy of FavoriteDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteDtoImplCopyWith<_$FavoriteDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoriteServiceInfoDto _$FavoriteServiceInfoDtoFromJson(
    Map<String, dynamic> json) {
  return _FavoriteServiceInfoDto.fromJson(json);
}

/// @nodoc
mixin _$FavoriteServiceInfoDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FavoriteServiceInfoDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteServiceInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteServiceInfoDtoCopyWith<FavoriteServiceInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteServiceInfoDtoCopyWith<$Res> {
  factory $FavoriteServiceInfoDtoCopyWith(FavoriteServiceInfoDto value,
          $Res Function(FavoriteServiceInfoDto) then) =
      _$FavoriteServiceInfoDtoCopyWithImpl<$Res, FavoriteServiceInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id, @JsonKey(name: "name") String name});
}

/// @nodoc
class _$FavoriteServiceInfoDtoCopyWithImpl<$Res,
        $Val extends FavoriteServiceInfoDto>
    implements $FavoriteServiceInfoDtoCopyWith<$Res> {
  _$FavoriteServiceInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteServiceInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteServiceInfoDtoImplCopyWith<$Res>
    implements $FavoriteServiceInfoDtoCopyWith<$Res> {
  factory _$$FavoriteServiceInfoDtoImplCopyWith(
          _$FavoriteServiceInfoDtoImpl value,
          $Res Function(_$FavoriteServiceInfoDtoImpl) then) =
      __$$FavoriteServiceInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id, @JsonKey(name: "name") String name});
}

/// @nodoc
class __$$FavoriteServiceInfoDtoImplCopyWithImpl<$Res>
    extends _$FavoriteServiceInfoDtoCopyWithImpl<$Res,
        _$FavoriteServiceInfoDtoImpl>
    implements _$$FavoriteServiceInfoDtoImplCopyWith<$Res> {
  __$$FavoriteServiceInfoDtoImplCopyWithImpl(
      _$FavoriteServiceInfoDtoImpl _value,
      $Res Function(_$FavoriteServiceInfoDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteServiceInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FavoriteServiceInfoDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteServiceInfoDtoImpl implements _FavoriteServiceInfoDto {
  const _$FavoriteServiceInfoDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name});

  factory _$FavoriteServiceInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteServiceInfoDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'FavoriteServiceInfoDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteServiceInfoDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of FavoriteServiceInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteServiceInfoDtoImplCopyWith<_$FavoriteServiceInfoDtoImpl>
      get copyWith => __$$FavoriteServiceInfoDtoImplCopyWithImpl<
          _$FavoriteServiceInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteServiceInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _FavoriteServiceInfoDto implements FavoriteServiceInfoDto {
  const factory _FavoriteServiceInfoDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "name") required final String name}) =
      _$FavoriteServiceInfoDtoImpl;

  factory _FavoriteServiceInfoDto.fromJson(Map<String, dynamic> json) =
      _$FavoriteServiceInfoDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of FavoriteServiceInfoDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteServiceInfoDtoImplCopyWith<_$FavoriteServiceInfoDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
