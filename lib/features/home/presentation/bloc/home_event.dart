part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCurrentPosition() = _GetCurrentPosition;
  const factory HomeEvent.getCategories() = _GetCategories;
  const factory HomeEvent.getSubCategories({required String catId}) =
      _GetSubCategories;
}
