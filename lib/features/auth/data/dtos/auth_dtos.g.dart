// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDtoImpl _$$UserInfoDtoImplFromJson(Map json) => _$UserInfoDtoImpl(
      id: json['id'] as String,
      isMaster: json['isMaster'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      phone: json['phone'] as String,
      point: json['point'] as String,
      coins: json['coins'] as String,
      email: json['email'] as String,
      birthDate: json['birthdate'] as String,
      notAvailable: json['not_available'] as String,
      imageUrl: json['imageUrl'] as String?,
      services: (json['services'] as List<dynamic>)
          .map((e) => CategoryDto.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$UserInfoDtoImplToJson(_$UserInfoDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isMaster': instance.isMaster,
      'name': instance.name,
      'surname': instance.surname,
      'phone': instance.phone,
      'point': instance.point,
      'coins': instance.coins,
      'email': instance.email,
      'birthdate': instance.birthDate,
      'not_available': instance.notAvailable,
      'imageUrl': instance.imageUrl,
      'services': instance.services.map((e) => e.toJson()).toList(),
    };

_$UserEntityDtoImpl _$$UserEntityDtoImplFromJson(Map json) =>
    _$UserEntityDtoImpl(
      isMaster: (json['master'] as num).toInt(),
      userId: json['user_id'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$UserEntityDtoImplToJson(_$UserEntityDtoImpl instance) =>
    <String, dynamic>{
      'master': instance.isMaster,
      'user_id': instance.userId,
      'token': instance.token,
    };
