part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int range,
    required bool isLoading,
    required Option<Position> userPosition,
    required List<Category> categories,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        range: 5,
        isLoading: false,
        userPosition: none(),
        categories: [],
      );
}
