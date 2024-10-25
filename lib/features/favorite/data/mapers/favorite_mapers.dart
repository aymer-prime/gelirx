import 'package:gelirx/features/favorite/data/dtos/favorite_dto.dart';
import 'package:gelirx/features/favorite/domain/entities/favorite_entities.dart';

extension FavoriteDtoX on FavoriteDto {
  Favorite toDomain() {
    return Favorite(
      id: id,
      name: name,
      surname: surname,
      totalComment: totalComment,
      point: point,
      totalInteraction: totalInteraction,
      image: image ??
          'https://static-00.iconduck.com/assets.00/no-image-icon-2048x2048-2t5cx953.png',
      services: services.map((e) => e.toDomain()).toList(),
    );
  }
}

extension FavoriteServiceInfoX on FavoriteServiceInfoDto {
  FavoriteServiceInfo toDomain() {
    return FavoriteServiceInfo(
      id: id,
      name: name,
    );
  }
}
