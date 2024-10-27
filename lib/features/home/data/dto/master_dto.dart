import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/shared/data/dtos/category/category_dto.dart';

part 'master_dto.freezed.dart';
part 'master_dto.g.dart';

@freezed
abstract class MasterDto with _$MasterDto {
  const factory MasterDto({
    required String id,
    // required String? phone,
    // required String? name,
    // required String? surname,
    required String latitude,
    required String longitude,
    required String point,
    required List<ServiceDto> services,
  }) = _MasterDto;

  factory MasterDto.fromJson(Map<String, dynamic> json) =>
      _$MasterDtoFromJson(json);
}

@freezed
class ServiceDto with _$ServiceDto {
  const factory ServiceDto({
    required ImgDto img,
  }) = _ServiceDto;

  factory ServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceDtoFromJson(json);
}
