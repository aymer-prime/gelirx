part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.getFavoriteMasters(UserEntity? user) =
      _GetFavoriteMasters;
  const factory FavoriteEvent.setFavorite(String masterId, UserEntity? user) =
      _SetFavorite;
  const factory FavoriteEvent.removeFavorite(
    String masterId,
    UserEntity? user,
    List<Favorite> currentFavs,
  ) = _RemoveFavorite;
}
