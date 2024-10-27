// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interaction_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InteractionDto _$InteractionDtoFromJson(Map<String, dynamic> json) {
  return _InteractionDto.fromJson(json);
}

/// @nodoc
mixin _$InteractionDto {
  @JsonKey(name: "interaction_id")
  String get interactionId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "surname")
  String get surname => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "point")
  String get point => throw _privateConstructorUsedError;
  @JsonKey(name: "service_id")
  String get serviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<String?> get images => throw _privateConstructorUsedError;

  /// Serializes this InteractionDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InteractionDtoCopyWith<InteractionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InteractionDtoCopyWith<$Res> {
  factory $InteractionDtoCopyWith(
          InteractionDto value, $Res Function(InteractionDto) then) =
      _$InteractionDtoCopyWithImpl<$Res, InteractionDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "interaction_id") String interactionId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "surname") String surname,
      @JsonKey(name: "comment") String comment,
      @JsonKey(name: "point") String point,
      @JsonKey(name: "service_id") String serviceId,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "images") List<String?> images});
}

/// @nodoc
class _$InteractionDtoCopyWithImpl<$Res, $Val extends InteractionDto>
    implements $InteractionDtoCopyWith<$Res> {
  _$InteractionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interactionId = null,
    Object? userId = null,
    Object? name = null,
    Object? surname = null,
    Object? comment = null,
    Object? point = null,
    Object? serviceId = null,
    Object? date = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      interactionId: null == interactionId
          ? _value.interactionId
          : interactionId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InteractionDtoImplCopyWith<$Res>
    implements $InteractionDtoCopyWith<$Res> {
  factory _$$InteractionDtoImplCopyWith(_$InteractionDtoImpl value,
          $Res Function(_$InteractionDtoImpl) then) =
      __$$InteractionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "interaction_id") String interactionId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "surname") String surname,
      @JsonKey(name: "comment") String comment,
      @JsonKey(name: "point") String point,
      @JsonKey(name: "service_id") String serviceId,
      @JsonKey(name: "date") String date,
      @JsonKey(name: "images") List<String?> images});
}

/// @nodoc
class __$$InteractionDtoImplCopyWithImpl<$Res>
    extends _$InteractionDtoCopyWithImpl<$Res, _$InteractionDtoImpl>
    implements _$$InteractionDtoImplCopyWith<$Res> {
  __$$InteractionDtoImplCopyWithImpl(
      _$InteractionDtoImpl _value, $Res Function(_$InteractionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of InteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interactionId = null,
    Object? userId = null,
    Object? name = null,
    Object? surname = null,
    Object? comment = null,
    Object? point = null,
    Object? serviceId = null,
    Object? date = null,
    Object? images = null,
  }) {
    return _then(_$InteractionDtoImpl(
      interactionId: null == interactionId
          ? _value.interactionId
          : interactionId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      point: null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InteractionDtoImpl implements _InteractionDto {
  const _$InteractionDtoImpl(
      {@JsonKey(name: "interaction_id") required this.interactionId,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "surname") required this.surname,
      @JsonKey(name: "comment") required this.comment,
      @JsonKey(name: "point") required this.point,
      @JsonKey(name: "service_id") required this.serviceId,
      @JsonKey(name: "date") required this.date,
      @JsonKey(name: "images") required final List<String?> images})
      : _images = images;

  factory _$InteractionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InteractionDtoImplFromJson(json);

  @override
  @JsonKey(name: "interaction_id")
  final String interactionId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "surname")
  final String surname;
  @override
  @JsonKey(name: "comment")
  final String comment;
  @override
  @JsonKey(name: "point")
  final String point;
  @override
  @JsonKey(name: "service_id")
  final String serviceId;
  @override
  @JsonKey(name: "date")
  final String date;
  final List<String?> _images;
  @override
  @JsonKey(name: "images")
  List<String?> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'InteractionDto(interactionId: $interactionId, userId: $userId, name: $name, surname: $surname, comment: $comment, point: $point, serviceId: $serviceId, date: $date, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InteractionDtoImpl &&
            (identical(other.interactionId, interactionId) ||
                other.interactionId == interactionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      interactionId,
      userId,
      name,
      surname,
      comment,
      point,
      serviceId,
      date,
      const DeepCollectionEquality().hash(_images));

  /// Create a copy of InteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InteractionDtoImplCopyWith<_$InteractionDtoImpl> get copyWith =>
      __$$InteractionDtoImplCopyWithImpl<_$InteractionDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InteractionDtoImplToJson(
      this,
    );
  }
}

abstract class _InteractionDto implements InteractionDto {
  const factory _InteractionDto(
          {@JsonKey(name: "interaction_id") required final String interactionId,
          @JsonKey(name: "user_id") required final String userId,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "surname") required final String surname,
          @JsonKey(name: "comment") required final String comment,
          @JsonKey(name: "point") required final String point,
          @JsonKey(name: "service_id") required final String serviceId,
          @JsonKey(name: "date") required final String date,
          @JsonKey(name: "images") required final List<String?> images}) =
      _$InteractionDtoImpl;

  factory _InteractionDto.fromJson(Map<String, dynamic> json) =
      _$InteractionDtoImpl.fromJson;

  @override
  @JsonKey(name: "interaction_id")
  String get interactionId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "surname")
  String get surname;
  @override
  @JsonKey(name: "comment")
  String get comment;
  @override
  @JsonKey(name: "point")
  String get point;
  @override
  @JsonKey(name: "service_id")
  String get serviceId;
  @override
  @JsonKey(name: "date")
  String get date;
  @override
  @JsonKey(name: "images")
  List<String?> get images;

  /// Create a copy of InteractionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InteractionDtoImplCopyWith<_$InteractionDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
