part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required Option<Position> userPosition,
    required List<dynamic> categories,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        userPosition: none(),
        categories: [],
      );
}
