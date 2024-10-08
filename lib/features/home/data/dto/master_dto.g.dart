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
          .map((e) => ServiceDto.fromJson(Map<String, dynamic>.from(e as Map)))
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

_$ServiceDtoImpl _$$ServiceDtoImplFromJson(Map json) => _$ServiceDtoImpl(
      img: ImgDto.fromJson(Map<String, dynamic>.from(json['img'] as Map)),
    );

Map<String, dynamic> _$$ServiceDtoImplToJson(_$ServiceDtoImpl instance) =>
    <String, dynamic>{
      'img': instance.img.toJson(),
    };
