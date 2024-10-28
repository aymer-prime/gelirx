import 'package:gelirx/features/shared/data/dtos/category/category_dto.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/shared/data/dtos/interaction/interaction_dto.dart';
import 'package:gelirx/features/shared/domain/entities/interaction/interaction_entity.dart';

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

extension InteractionDtoX on InteractionDto {
  Interaction toDomain() {
    return Interaction(
      interactionId: interactionId,
      userId: userId,
      name: name,
      surname: surname,
      comment: comment ?? '',
      point: point,
      serviceId: serviceId,
      date: DateTime.parse(date),
      images: images.first ??
          'https://static-00.iconduck.com/assets.00/no-image-icon-2048x2048-2t5cx953.png',
    );
  }
}
