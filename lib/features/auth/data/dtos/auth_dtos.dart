// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/shared/domain/dtos/category/category_dto.dart';

part 'auth_dtos.freezed.dart';
part 'auth_dtos.g.dart';

@freezed
class UserInfoDto with _$UserInfoDto {
  const factory UserInfoDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "isMaster") required String isMaster,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "surname") required String surname,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "point") required String point,
    @JsonKey(name: "coins") required String coins,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "birthdate") required String birthDate,
    @JsonKey(name: "not_available") required String notAvailable,
    @JsonKey(name: "imageUrl") required String? imageUrl,
    @JsonKey(name: "services") required List<CategoryDto> services,
  }) = _UserInfoDto;

  factory UserInfoDto.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDtoFromJson(json);
}

@freezed
class UserEntityDto with _$UserEntityDto {
  const factory UserEntityDto({
    @JsonKey(name: "master") required int isMaster,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "token") required String token,
  }) = _UserEntityDto;

  factory UserEntityDto.fromJson(Map<String, dynamic> json) =>
      _$UserEntityDtoFromJson(json);
}
