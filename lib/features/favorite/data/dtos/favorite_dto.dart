// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_dto.freezed.dart';
part 'favorite_dto.g.dart';

@freezed
class FavoriteDto with _$FavoriteDto {
  const factory FavoriteDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "surname") required String surname,
    @JsonKey(name: "total_comment") required int totalComment,
    @JsonKey(name: "point") required int point,
    @JsonKey(name: "total_interaction") required int totalInteraction,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "services") required List<FavoriteServiceInfoDto> services,
  }) = _FavoriteDto;

  factory FavoriteDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDtoFromJson(json);
}

@freezed
class FavoriteServiceInfoDto with _$FavoriteServiceInfoDto {
  const factory FavoriteServiceInfoDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
  }) = _FavoriteServiceInfoDto;

  factory FavoriteServiceInfoDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteServiceInfoDtoFromJson(json);
}
