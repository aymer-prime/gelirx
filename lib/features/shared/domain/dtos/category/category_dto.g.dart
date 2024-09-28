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
      img: ImgDto.fromJson(Map<String, dynamic>.from(json['img'] as Map)),
    );

Map<String, dynamic> _$$CategoryDtoImplToJson(_$CategoryDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'link': instance.link,
      'img': instance.img.toJson(),
    };

_$ImgDtoImpl _$$ImgDtoImplFromJson(Map json) => _$ImgDtoImpl(
      icon: json['icon'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$ImgDtoImplToJson(_$ImgDtoImpl instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'photo': instance.photo,
    };
