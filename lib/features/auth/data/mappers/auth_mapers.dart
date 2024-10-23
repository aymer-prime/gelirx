import 'package:gelirx/features/auth/data/dtos/auth_dtos.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/shared/domain/mappers/shared_mappers.dart';

extension UserInfoDtoX on UserInfoDto {
  UserInfo toDomain() {
    return UserInfo(
      id: id,
      isMaster: isMaster,
      name: name,
      surname: surname,
      phone: phone,
      point: point,
      coins: coins,
      email: email,
      birthDate: birthDate,
      notAvailable: notAvailable,
      imageUrl: imageUrl ??
          'https://static-00.iconduck.com/assets.00/no-image-icon-2048x2048-2t5cx953.png',
      services: services.map((e) => e.toDomain()).toList(),
    );
  }
}

extension UserEntityDtoX on UserEntityDto {
  UserEntity toDomain() {
    return UserEntity(
      userId: userId,
      token: token,
      isMaster: isMaster == 1,
    );
  }
}
