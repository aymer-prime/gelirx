// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FavoriteDtoImpl _$$FavoriteDtoImplFromJson(Map json) => _$FavoriteDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      totalComment: (json['total_comment'] as num).toInt(),
      point: (json['point'] as num).toInt(),
      totalInteraction: (json['total_interaction'] as num).toInt(),
      image: json['image'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => FavoriteServiceInfoDto.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$FavoriteDtoImplToJson(_$FavoriteDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'total_comment': instance.totalComment,
      'point': instance.point,
      'total_interaction': instance.totalInteraction,
      'image': instance.image,
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

_$FavoriteServiceInfoDtoImpl _$$FavoriteServiceInfoDtoImplFromJson(Map json) =>
    _$FavoriteServiceInfoDtoImpl(
      id: json['id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$FavoriteServiceInfoDtoImplToJson(
        _$FavoriteServiceInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
