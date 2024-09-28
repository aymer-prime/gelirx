import 'package:gelirx/features/shared/domain/dtos/category/category_dto.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';

extension CategoryDtoX on CategoryDto {
  Category toDomain() {
    return Category(
      id: id,
      name: name,
      description: description,
      link: link,
      img: img.toDomain(),
    );
  }
}

extension ImgDtoX on ImgDto {
  Img toDomain() {
    return Img(
      icon: icon ??
          'https://static-00.iconduck.com/assets.00/no-image-icon-2048x2048-2t5cx953.png',
      photo: photo ??
          'https://static-00.iconduck.com/assets.00/no-image-icon-2048x2048-2t5cx953.png',
    );
  }
}
