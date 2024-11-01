// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingResultDto _$BookingResultDtoFromJson(Map<String, dynamic> json) {
  return _BookingResultDto.fromJson(json);
}

/// @nodoc
mixin _$BookingResultDto {
  @JsonKey(name: "bookings")
  List<BookingResponseDto> get bookings => throw _privateConstructorUsedError;

  /// Serializes this BookingResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResultDtoCopyWith<BookingResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResultDtoCopyWith<$Res> {
  factory $BookingResultDtoCopyWith(
          BookingResultDto value, $Res Function(BookingResultDto) then) =
      _$BookingResultDtoCopyWithImpl<$Res, BookingResultDto>;
  @useResult
  $Res call({@JsonKey(name: "bookings") List<BookingResponseDto> bookings});
}

/// @nodoc
class _$BookingResultDtoCopyWithImpl<$Res, $Val extends BookingResultDto>
    implements $BookingResultDtoCopyWith<$Res> {
  _$BookingResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_value.copyWith(
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingResponseDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingResultDtoImplCopyWith<$Res>
    implements $BookingResultDtoCopyWith<$Res> {
  factory _$$BookingResultDtoImplCopyWith(_$BookingResultDtoImpl value,
          $Res Function(_$BookingResultDtoImpl) then) =
      __$$BookingResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "bookings") List<BookingResponseDto> bookings});
}

/// @nodoc
class __$$BookingResultDtoImplCopyWithImpl<$Res>
    extends _$BookingResultDtoCopyWithImpl<$Res, _$BookingResultDtoImpl>
    implements _$$BookingResultDtoImplCopyWith<$Res> {
  __$$BookingResultDtoImplCopyWithImpl(_$BookingResultDtoImpl _value,
      $Res Function(_$BookingResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_$BookingResultDtoImpl(
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<BookingResponseDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResultDtoImpl implements _BookingResultDto {
  const _$BookingResultDtoImpl(
      {@JsonKey(name: "bookings")
      required final List<BookingResponseDto> bookings})
      : _bookings = bookings;

  factory _$BookingResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResultDtoImplFromJson(json);

  final List<BookingResponseDto> _bookings;
  @override
  @JsonKey(name: "bookings")
  List<BookingResponseDto> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'BookingResultDto(bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResultDtoImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookings));

  /// Create a copy of BookingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResultDtoImplCopyWith<_$BookingResultDtoImpl> get copyWith =>
      __$$BookingResultDtoImplCopyWithImpl<_$BookingResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResultDtoImplToJson(
      this,
    );
  }
}

abstract class _BookingResultDto implements BookingResultDto {
  const factory _BookingResultDto(
          {@JsonKey(name: "bookings")
          required final List<BookingResponseDto> bookings}) =
      _$BookingResultDtoImpl;

  factory _BookingResultDto.fromJson(Map<String, dynamic> json) =
      _$BookingResultDtoImpl.fromJson;

  @override
  @JsonKey(name: "bookings")
  List<BookingResponseDto> get bookings;

  /// Create a copy of BookingResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResultDtoImplCopyWith<_$BookingResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingResponseDto _$BookingResponseDtoFromJson(Map<String, dynamic> json) {
  return _BookingResponseDto.fromJson(json);
}

/// @nodoc
mixin _$BookingResponseDto {
  @JsonKey(name: "booking_info")
  BookingDto get booking => throw _privateConstructorUsedError;
  FavoriteDto get master => throw _privateConstructorUsedError;

  /// Serializes this BookingResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseDtoCopyWith<BookingResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseDtoCopyWith<$Res> {
  factory $BookingResponseDtoCopyWith(
          BookingResponseDto value, $Res Function(BookingResponseDto) then) =
      _$BookingResponseDtoCopyWithImpl<$Res, BookingResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "booking_info") BookingDto booking, FavoriteDto master});

  $BookingDtoCopyWith<$Res> get booking;
  $FavoriteDtoCopyWith<$Res> get master;
}

/// @nodoc
class _$BookingResponseDtoCopyWithImpl<$Res, $Val extends BookingResponseDto>
    implements $BookingResponseDtoCopyWith<$Res> {
  _$BookingResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
    Object? master = null,
  }) {
    return _then(_value.copyWith(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingDto,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as FavoriteDto,
    ) as $Val);
  }

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingDtoCopyWith<$Res> get booking {
    return $BookingDtoCopyWith<$Res>(_value.booking, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FavoriteDtoCopyWith<$Res> get master {
    return $FavoriteDtoCopyWith<$Res>(_value.master, (value) {
      return _then(_value.copyWith(master: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingResponseDtoImplCopyWith<$Res>
    implements $BookingResponseDtoCopyWith<$Res> {
  factory _$$BookingResponseDtoImplCopyWith(_$BookingResponseDtoImpl value,
          $Res Function(_$BookingResponseDtoImpl) then) =
      __$$BookingResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "booking_info") BookingDto booking, FavoriteDto master});

  @override
  $BookingDtoCopyWith<$Res> get booking;
  @override
  $FavoriteDtoCopyWith<$Res> get master;
}

/// @nodoc
class __$$BookingResponseDtoImplCopyWithImpl<$Res>
    extends _$BookingResponseDtoCopyWithImpl<$Res, _$BookingResponseDtoImpl>
    implements _$$BookingResponseDtoImplCopyWith<$Res> {
  __$$BookingResponseDtoImplCopyWithImpl(_$BookingResponseDtoImpl _value,
      $Res Function(_$BookingResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booking = null,
    Object? master = null,
  }) {
    return _then(_$BookingResponseDtoImpl(
      booking: null == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingDto,
      master: null == master
          ? _value.master
          : master // ignore: cast_nullable_to_non_nullable
              as FavoriteDto,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$BookingResponseDtoImpl implements _BookingResponseDto {
  const _$BookingResponseDtoImpl(
      {@JsonKey(name: "booking_info") required this.booking,
      required this.master});

  factory _$BookingResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: "booking_info")
  final BookingDto booking;
  @override
  final FavoriteDto master;

  @override
  String toString() {
    return 'BookingResponseDto(booking: $booking, master: $master)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseDtoImpl &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.master, master) || other.master == master));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, booking, master);

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseDtoImplCopyWith<_$BookingResponseDtoImpl> get copyWith =>
      __$$BookingResponseDtoImplCopyWithImpl<_$BookingResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _BookingResponseDto implements BookingResponseDto {
  const factory _BookingResponseDto(
      {@JsonKey(name: "booking_info") required final BookingDto booking,
      required final FavoriteDto master}) = _$BookingResponseDtoImpl;

  factory _BookingResponseDto.fromJson(Map<String, dynamic> json) =
      _$BookingResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: "booking_info")
  BookingDto get booking;
  @override
  FavoriteDto get master;

  /// Create a copy of BookingResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseDtoImplCopyWith<_$BookingResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDto _$BookingDtoFromJson(Map<String, dynamic> json) {
  return _BookingDto.fromJson(json);
}

/// @nodoc
mixin _$BookingDto {
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "master_id")
  String get masterId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "booking_images")
  List<String> get bookingImages => throw _privateConstructorUsedError;
  @JsonKey(name: "sending_date")
  String get sendingDate => throw _privateConstructorUsedError;
  @JsonKey(name: "process_date")
  String get processDate => throw _privateConstructorUsedError;

  /// Serializes this BookingDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingDtoCopyWith<BookingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDtoCopyWith<$Res> {
  factory $BookingDtoCopyWith(
          BookingDto value, $Res Function(BookingDto) then) =
      _$BookingDtoCopyWithImpl<$Res, BookingDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "master_id") String masterId,
      @JsonKey(name: "category_id") String categoryId,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "booking_images") List<String> bookingImages,
      @JsonKey(name: "sending_date") String sendingDate,
      @JsonKey(name: "process_date") String processDate});
}

/// @nodoc
class _$BookingDtoCopyWithImpl<$Res, $Val extends BookingDto>
    implements $BookingDtoCopyWith<$Res> {
  _$BookingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingDto
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
              as String,
      processDate: null == processDate
          ? _value.processDate
          : processDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingDtoImplCopyWith<$Res>
    implements $BookingDtoCopyWith<$Res> {
  factory _$$BookingDtoImplCopyWith(
          _$BookingDtoImpl value, $Res Function(_$BookingDtoImpl) then) =
      __$$BookingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "master_id") String masterId,
      @JsonKey(name: "category_id") String categoryId,
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "longitude") String longitude,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "booking_images") List<String> bookingImages,
      @JsonKey(name: "sending_date") String sendingDate,
      @JsonKey(name: "process_date") String processDate});
}

/// @nodoc
class __$$BookingDtoImplCopyWithImpl<$Res>
    extends _$BookingDtoCopyWithImpl<$Res, _$BookingDtoImpl>
    implements _$$BookingDtoImplCopyWith<$Res> {
  __$$BookingDtoImplCopyWithImpl(
      _$BookingDtoImpl _value, $Res Function(_$BookingDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingDto
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
  }) {
    return _then(_$BookingDtoImpl(
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
              as String,
      processDate: null == processDate
          ? _value.processDate
          : processDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$BookingDtoImpl implements _BookingDto {
  const _$BookingDtoImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_id") required this.userId,
      @JsonKey(name: "master_id") required this.masterId,
      @JsonKey(name: "category_id") required this.categoryId,
      @JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "longitude") required this.longitude,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "booking_images")
      required final List<String> bookingImages,
      @JsonKey(name: "sending_date") required this.sendingDate,
      @JsonKey(name: "process_date") required this.processDate})
      : _bookingImages = bookingImages;

  factory _$BookingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDtoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "master_id")
  final String masterId;
  @override
  @JsonKey(name: "category_id")
  final String categoryId;
  @override
  @JsonKey(name: "latitude")
  final String latitude;
  @override
  @JsonKey(name: "longitude")
  final String longitude;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "status")
  final String status;
  final List<String> _bookingImages;
  @override
  @JsonKey(name: "booking_images")
  List<String> get bookingImages {
    if (_bookingImages is EqualUnmodifiableListView) return _bookingImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingImages);
  }

  @override
  @JsonKey(name: "sending_date")
  final String sendingDate;
  @override
  @JsonKey(name: "process_date")
  final String processDate;

  @override
  String toString() {
    return 'BookingDto(id: $id, userId: $userId, masterId: $masterId, categoryId: $categoryId, latitude: $latitude, longitude: $longitude, address: $address, description: $description, status: $status, bookingImages: $bookingImages, sendingDate: $sendingDate, processDate: $processDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDtoImpl &&
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
                other.processDate == processDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      processDate);

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDtoImplCopyWith<_$BookingDtoImpl> get copyWith =>
      __$$BookingDtoImplCopyWithImpl<_$BookingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDtoImplToJson(
      this,
    );
  }
}

abstract class _BookingDto implements BookingDto {
  const factory _BookingDto(
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "user_id") required final String userId,
          @JsonKey(name: "master_id") required final String masterId,
          @JsonKey(name: "category_id") required final String categoryId,
          @JsonKey(name: "latitude") required final String latitude,
          @JsonKey(name: "longitude") required final String longitude,
          @JsonKey(name: "address") required final String address,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "status") required final String status,
          @JsonKey(name: "booking_images")
          required final List<String> bookingImages,
          @JsonKey(name: "sending_date") required final String sendingDate,
          @JsonKey(name: "process_date") required final String processDate}) =
      _$BookingDtoImpl;

  factory _BookingDto.fromJson(Map<String, dynamic> json) =
      _$BookingDtoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "master_id")
  String get masterId;
  @override
  @JsonKey(name: "category_id")
  String get categoryId;
  @override
  @JsonKey(name: "latitude")
  String get latitude;
  @override
  @JsonKey(name: "longitude")
  String get longitude;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "booking_images")
  List<String> get bookingImages;
  @override
  @JsonKey(name: "sending_date")
  String get sendingDate;
  @override
  @JsonKey(name: "process_date")
  String get processDate;

  /// Create a copy of BookingDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingDtoImplCopyWith<_$BookingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
