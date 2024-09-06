part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required Option<Position> userPosition,
    required List<Category> categories,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        isLoading: false,
        userPosition: none(),
        categories: [],
      );
}
