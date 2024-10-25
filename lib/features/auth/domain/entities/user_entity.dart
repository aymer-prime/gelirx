import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String userId,
    required String token,
    required bool isMaster,
  }) = _UserEntity;
}

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String id,
    required String isMaster,
    required String name,
    required String surname,
    required String phone,
    required String point,
    required String coins,
    required String email,
    required String birthDate,
    required String notAvailable,
    required String imageUrl,
    required List<Category> services,
  }) = _UserInfo;
}
