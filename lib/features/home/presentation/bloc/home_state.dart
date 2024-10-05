part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    int? selectedCategory,
    required bool isLoading,
    required Option<Position> userPosition,
    required List<Category> categories,
    required List<Category> subCategories,
    required List<UserSkills> services,
    required List<Master> masters,
    required List<Category> catFilterIndexes,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        catFilterIndexes: [],
        selectedCategory: null,
        isLoading: false,
        userPosition: none(),
        categories: [],
        subCategories: [],
        services: [],
        masters: [],
      );
}
