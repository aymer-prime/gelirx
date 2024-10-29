// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Booking {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get masterId => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<String> get bookingImages => throw _privateConstructorUsedError;
  DateTime get sendingDate => throw _privateConstructorUsedError;
  DateTime get processDate => throw _privateConstructorUsedError;
  Favorite get master => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String masterId,
      String categoryId,
      String latitude,
      String longitude,
      String address,
      String description,
      String status,
      List<String> bookingImages,
      DateTime sendingDate,
      DateTime processDate,
      Favorite master});

  $FavoriteCopyWith<$Res> get master;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? masterId = null,
    Object? categoryId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? description = null,
    Object? status = null,
    Object? bookingImages = null,
    Object? sendingDate = null,
    Object? processDate = null,
    Object? master = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      masterId: null == masterId
          ? _value.masterId
          : masterId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      bookingImages: null == bookingImages
          ? _value.bookingImages
          : bookingImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sendingDate: null == sendingDate
          ? _value.sendingDate
          : sendingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      processDate: null == processDate
          ? _value.processDate
          : processDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as Favorite,
    ) as $Val);
  }

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavoriteCopyWith<$Res> get master {
    return $FavoriteCopyWith<$Res>(_value.master, (value) {
      return _then(_value.copyWith(master: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String masterId,
      String categoryId,
      String latitude,
      String longitude,
      String address,
      String description,
      String status,
      List<String> bookingImages,
      DateTime sendingDate,
      DateTime processDate,
      Favorite master});

  @override
  $FavoriteCopyWith<$Res> get master;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? masterId = null,
    Object? categoryId = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? address = null,
    Object? description = null,
    Object? status = null,
    Object? bookingImages = null,
    Object? sendingDate = null,
    Object? processDate = null,
    Object? master = null,
  }) {
    return _then(_$BookingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      masterId: null == masterId
          ? _value.masterId
          : masterId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      bookingImages: null == bookingImages
          ? _value._bookingImages
          : bookingImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sendingDate: null == sendingDate
          ? _value.sendingDate
          : sendingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      processDate: null == processDate
          ? _value.processDate
          : processDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as Favorite,
    ));
  }
}

/// @nodoc

class _$BookingImpl implements _Booking {
  const _$BookingImpl(
      {required this.id,
      required this.userId,
      required this.masterId,
      required this.categoryId,
      required this.latitude,
      required this.longitude,
      required this.address,
      required this.description,
      required this.status,
      required final List<String> bookingImages,
      required this.sendingDate,
      required this.processDate,
      required this.master})
      : _bookingImages = bookingImages;

  @override
  final String id;
  @override
  final String userId;
  @override
  final String masterId;
  @override
  final String categoryId;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final String address;
  @override
  final String description;
  @override
  final String status;
  final List<String> _bookingImages;
  @override
  List<String> get bookingImages {
    if (_bookingImages is EqualUnmodifiableListView) return _bookingImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingImages);
  }

  @override
  final DateTime sendingDate;
  @override
  final DateTime processDate;
  @override
  final Favorite master;

  @override
  String toString() {
    return 'Booking(id: $id, userId: $userId, masterId: $masterId, categoryId: $categoryId, latitude: $latitude, longitude: $longitude, address: $address, description: $description, status: $status, bookingImages: $bookingImages, sendingDate: $sendingDate, processDate: $processDate, master: $master)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.masterId, masterId) ||
                other.masterId == masterId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._bookingImages, _bookingImages) &&
            (identical(other.sendingDate, sendingDate) ||
                other.sendingDate == sendingDate) &&
            (identical(other.processDate, processDate) ||
                other.processDate == processDate) &&
            (identical(other.master, master) || other.master == master));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      masterId,
      categoryId,
      latitude,
      longitude,
      address,
      description,
      status,
      const DeepCollectionEquality().hash(_bookingImages),
      sendingDate,
      processDate,
      master);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);
}

abstract class _Booking implements Booking {
  const factory _Booking(
      {required final String id,
      required final String userId,
      required final String masterId,
      required final String categoryId,
      required final String latitude,
      required final String longitude,
      required final String address,
      required final String description,
      required final String status,
      required final List<String> bookingImages,
      required final DateTime sendingDate,
      required final DateTime processDate,
      required final Favorite master}) = _$BookingImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get masterId;
  @override
  String get categoryId;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  String get address;
  @override
  String get description;
  @override
  String get status;
  @override
  List<String> get bookingImages;
  @override
  DateTime get sendingDate;
  @override
  DateTime get processDate;
  @override
  Favorite get master;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
