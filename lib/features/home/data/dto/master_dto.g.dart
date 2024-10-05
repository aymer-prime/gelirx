// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterDtoImpl _$$MasterDtoImplFromJson(Map json) => _$MasterDtoImpl(
      id: json['id'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      point: json['point'] as String,
      services: (json['services'] as List<dynamic>)
          .map((e) => ImgDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$MasterDtoImplToJson(_$MasterDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'point': instance.point,
      'services': instance.services.map((e) => e.toJson()).toList(),
    };
