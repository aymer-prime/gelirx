part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.loadSuccess(List<Favorite> favorites) =
      _LoadSuccess;
  const factory FavoriteState.loadFailed(ApiException apiException) =
      _LoadFailed;
}
