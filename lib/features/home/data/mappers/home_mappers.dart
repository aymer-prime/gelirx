import 'dart:ffi';

import 'package:gelirx/features/home/data/dto/master_dto.dart';
import 'package:gelirx/features/home/data/home_repository.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/shared/domain/mappers/shared_mappers.dart';

extension MasterDtoX on MasterDto {
  Master toDomain() {
    return Master(
        id: id,
        phone: phone,
        name: name,
        surname: surname,
        latitude: double.parse(latitude),
        longitude: double.parse(longitude),
        point: point,
        categories: categories.map((e)=> e.toDomain()).toList());
  }
}
