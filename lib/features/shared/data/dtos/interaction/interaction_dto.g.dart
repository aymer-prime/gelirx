// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InteractionDtoImpl _$$InteractionDtoImplFromJson(Map json) =>
    _$InteractionDtoImpl(
      interactionId: json['interaction_id'] as String,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      comment: json['comment'] as String?,
      point: json['point'] as String,
      serviceId: json['service_id'] as String,
      date: json['date'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$InteractionDtoImplToJson(
        _$InteractionDtoImpl instance) =>
    <String, dynamic>{
      'interaction_id': instance.interactionId,
      'user_id': instance.userId,
      'name': instance.name,
      'surname': instance.surname,
      'comment': instance.comment,
      'point': instance.point,
      'service_id': instance.serviceId,
      'date': instance.date,
      'images': instance.images,
    };
