// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Favorite {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  int get totalComment => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  int get totalInteraction => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<FavoriteServiceInfo> get services => throw _privateConstructorUsedError;

  /// Create a copy of Favorite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteCopyWith<Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res, Favorite>;
  @useResult
  $Res call(
      {String id,
      String name,
      String surname,
      int totalComment,
      int point,
      int totalInteraction,
      String image,
      List<FavoriteServiceInfo> services});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res, $Val extends Favorite>
    implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Favorite
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
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<FavoriteServiceInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteImplCopyWith<$Res>
    implements $FavoriteCopyWith<$Res> {
  factory _$$FavoriteImplCopyWith(
          _$FavoriteImpl value, $Res Function(_$FavoriteImpl) then) =
      __$$FavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String surname,
      int totalComment,
      int point,
      int totalInteraction,
      String image,
      List<FavoriteServiceInfo> services});
}

/// @nodoc
class __$$FavoriteImplCopyWithImpl<$Res>
    extends _$FavoriteCopyWithImpl<$Res, _$FavoriteImpl>
    implements _$$FavoriteImplCopyWith<$Res> {
  __$$FavoriteImplCopyWithImpl(
      _$FavoriteImpl _value, $Res Function(_$FavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Favorite
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
    Object? image = null,
    Object? services = null,
  }) {
    return _then(_$FavoriteImpl(
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      services: null == services
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<FavoriteServiceInfo>,
    ));
  }
}

/// @nodoc

class _$FavoriteImpl implements _Favorite {
  const _$FavoriteImpl(
      {required this.id,
      required this.name,
      required this.surname,
      required this.totalComment,
      required this.point,
      required this.totalInteraction,
      required this.image,
      required final List<FavoriteServiceInfo> services})
      : _services = services;

  @override
  final String id;
  @override
  final String name;
  @override
  final String surname;
  @override
  final int totalComment;
  @override
  final int point;
  @override
  final int totalInteraction;
  @override
  final String image;
  final List<FavoriteServiceInfo> _services;
  @override
  List<FavoriteServiceInfo> get services {
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'Favorite(id: $id, name: $name, surname: $surname, totalComment: $totalComment, point: $point, totalInteraction: $totalInteraction, image: $image, services: $services)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteImpl &&
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

  /// Create a copy of Favorite
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      __$$FavoriteImplCopyWithImpl<_$FavoriteImpl>(this, _$identity);
}

abstract class _Favorite implements Favorite {
  const factory _Favorite(
      {required final String id,
      required final String name,
      required final String surname,
      required final int totalComment,
      required final int point,
      required final int totalInteraction,
      required final String image,
      required final List<FavoriteServiceInfo> services}) = _$FavoriteImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get surname;
  @override
  int get totalComment;
  @override
  int get point;
  @override
  int get totalInteraction;
  @override
  String get image;
  @override
  List<FavoriteServiceInfo> get services;

  /// Create a copy of Favorite
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteImplCopyWith<_$FavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoriteServiceInfo {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of FavoriteServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavoriteServiceInfoCopyWith<FavoriteServiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteServiceInfoCopyWith<$Res> {
  factory $FavoriteServiceInfoCopyWith(
          FavoriteServiceInfo value, $Res Function(FavoriteServiceInfo) then) =
      _$FavoriteServiceInfoCopyWithImpl<$Res, FavoriteServiceInfo>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$FavoriteServiceInfoCopyWithImpl<$Res, $Val extends FavoriteServiceInfo>
    implements $FavoriteServiceInfoCopyWith<$Res> {
  _$FavoriteServiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavoriteServiceInfo
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
abstract class _$$FavoriteServiceInfoImplCopyWith<$Res>
    implements $FavoriteServiceInfoCopyWith<$Res> {
  factory _$$FavoriteServiceInfoImplCopyWith(_$FavoriteServiceInfoImpl value,
          $Res Function(_$FavoriteServiceInfoImpl) then) =
      __$$FavoriteServiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$FavoriteServiceInfoImplCopyWithImpl<$Res>
    extends _$FavoriteServiceInfoCopyWithImpl<$Res, _$FavoriteServiceInfoImpl>
    implements _$$FavoriteServiceInfoImplCopyWith<$Res> {
  __$$FavoriteServiceInfoImplCopyWithImpl(_$FavoriteServiceInfoImpl _value,
      $Res Function(_$FavoriteServiceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavoriteServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FavoriteServiceInfoImpl(
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

class _$FavoriteServiceInfoImpl implements _FavoriteServiceInfo {
  const _$FavoriteServiceInfoImpl({required this.id, required this.name});

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'FavoriteServiceInfo(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteServiceInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of FavoriteServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteServiceInfoImplCopyWith<_$FavoriteServiceInfoImpl> get copyWith =>
      __$$FavoriteServiceInfoImplCopyWithImpl<_$FavoriteServiceInfoImpl>(
          this, _$identity);
}

abstract class _FavoriteServiceInfo implements FavoriteServiceInfo {
  const factory _FavoriteServiceInfo(
      {required final String id,
      required final String name}) = _$FavoriteServiceInfoImpl;

  @override
  String get id;
  @override
  String get name;

  /// Create a copy of FavoriteServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavoriteServiceInfoImplCopyWith<_$FavoriteServiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
