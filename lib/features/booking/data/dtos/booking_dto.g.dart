// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingDtoImpl _$$BookingDtoImplFromJson(Map json) => _$BookingDtoImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      masterId: json['masterId'] as String,
      categoryId: json['categoryId'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      sendingDate: json['sendingDate'] as String,
      processDate: json['processDate'] as String,
    );

Map<String, dynamic> _$$BookingDtoImplToJson(_$BookingDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'masterId': instance.masterId,
      'categoryId': instance.categoryId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'description': instance.description,
      'status': instance.status,
      'sendingDate': instance.sendingDate,
      'processDate': instance.processDate,
    };
