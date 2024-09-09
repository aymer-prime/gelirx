part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int range,
    required int catIndex,
    required int subCatIndex,
    required bool isLoading,
    required Option<Position> userPosition,
    required List<Category> categories,
    required List<Category> subCategories,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        range: 5,
        catIndex: 0,
        subCatIndex: 0,
        isLoading: false,
        userPosition: none(),
        categories: [],
        subCategories: [],
      );
}
