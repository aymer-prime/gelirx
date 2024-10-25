import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/favorite/domain/entities/favorite_entities.dart';
import 'package:gelirx/features/shared/domain/i_favorite_repository.dart';
import 'package:injectable/injectable.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

@injectable
class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final IFavoriteRepository _iFavoriteRepository;
  FavoriteBloc(this._iFavoriteRepository) : super(const _Initial()) {
    on<_GetFavoriteMasters>((event, emit) async {
      var user = event.user;
      emit(const FavoriteState.loading());
      if (user != null) {
        var result = await _iFavoriteRepository.getFavoriteMasters(
          user.userId,
          user.token,
        );
        result.fold(
          (apiException) => emit(FavoriteState.loadFailed(apiException)),
          (favorites) => emit(FavoriteState.loadSuccess(favorites)),
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        emit(
          const FavoriteState.loadFailed(
            ApiException.defaultException(
                '-1', 'Unauthorized: please login first.'),
          ),
        );
      }
    });
    on<_SetFavorite>((event, emit) async {
      var user = event.user;
      if (user != null) {
        _iFavoriteRepository.setFavorite(
          user.userId,
          event.masterId,
          user.token,
        );
      }
      //add(FavoriteEvent.getFavoriteMasters(user));
    });
    on<_RemoveFavorite>((event, emit) async {
      var user = event.user;
      if (user != null) {
        var currentFavs = [...event.currentFavs];
        currentFavs.removeWhere(
          (element) => element.id == event.masterId,
        );
        emit(FavoriteState.loadSuccess(currentFavs));
        _iFavoriteRepository.removeFavorite(
          user.userId,
          event.masterId,
          user.token,
        );
      }
    });
  }
}
