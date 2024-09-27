// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterDtoImpl _$$MasterDtoImplFromJson(Map json) => _$MasterDtoImpl(
      id: json['id'] as String,
      phone: json['phone'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      point: json['point'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$MasterDtoImplToJson(_$MasterDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'name': instance.name,
      'surname': instance.surname,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'point': instance.point,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };
