import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/shared/domain/dtos/category/category_dto.dart';

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
    required List<ImgDto> services,
  }) = _MasterDto;

  factory MasterDto.fromJson(Map<String, dynamic> json) =>
      _$MasterDtoFromJson(json);
}