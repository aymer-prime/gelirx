// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDtoImpl _$$CategoryDtoImplFromJson(Map json) => _$CategoryDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'img': instance.img,
    };
