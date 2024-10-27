import 'package:gelirx/features/home/data/dto/master_dto.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/shared/data/mappers/shared_mappers.dart';

extension MasterDtoX on MasterDto {
  Master toDomain() {
    return Master(
      id: id,
      // phone: phone ,
      // name: name,
      // surname: surname,
      latitude: double.parse(latitude),
      longitude: double.parse(longitude),
      point: point,
      categories: services.map((e) => e.img.toDomain()).toList(),
    );
  }
}
