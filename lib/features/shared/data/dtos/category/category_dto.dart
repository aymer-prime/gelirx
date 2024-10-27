import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
abstract class CategoryDto with _$CategoryDto {
  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory CategoryDto({
    required String id,
    required String name,
    required String description,
    required String link,
    required ImgDto img,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}

@freezed
class ImgDto with _$ImgDto {
  const factory ImgDto({
    required String? icon,
    required String? photo,
  }) = _ImgDto;

  factory ImgDto.fromJson(Map<String, dynamic> json) => _$ImgDtoFromJson(json);
}
