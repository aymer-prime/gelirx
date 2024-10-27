// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingResultDtoImpl _$$BookingResultDtoImplFromJson(Map json) =>
    _$BookingResultDtoImpl(
      bookings: (json['bookings'] as List<dynamic>)
          .map((e) =>
              BookingResponseDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$BookingResultDtoImplToJson(
        _$BookingResultDtoImpl instance) =>
    <String, dynamic>{
      'bookings': instance.bookings.map((e) => e.toJson()).toList(),
    };

_$BookingResponseDtoImpl _$$BookingResponseDtoImplFromJson(Map json) =>
    _$BookingResponseDtoImpl(
      booking: BookingDto.fromJson(
          Map<String, dynamic>.from(json['booking_info'] as Map)),
      master: FavoriteDto.fromJson(
          Map<String, dynamic>.from(json['master'] as Map)),
    );

Map<String, dynamic> _$$BookingResponseDtoImplToJson(
        _$BookingResponseDtoImpl instance) =>
    <String, dynamic>{
      'booking_info': instance.booking.toJson(),
      'master': instance.master.toJson(),
    };

_$BookingDtoImpl _$$BookingDtoImplFromJson(Map json) => _$BookingDtoImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      masterId: json['master_id'] as String,
      categoryId: json['category_id'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      sendingDate: json['sending_date'] as String,
      processDate: json['process_date'] as String,
    );

Map<String, dynamic> _$$BookingDtoImplToJson(_$BookingDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'master_id': instance.masterId,
      'category_id': instance.categoryId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'description': instance.description,
      'status': instance.status,
      'sending_date': instance.sendingDate,
      'process_date': instance.processDate,
    };
