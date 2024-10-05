part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getCurrentPosition() = _GetCurrentPosition;
  const factory HomeEvent.getCategories() = _GetCategories;
  const factory HomeEvent.getSubCategories({required int catIndex}) =
      _GetSubCategories;
  const factory HomeEvent.getServices() = _GetServices;
  const factory HomeEvent.getMasters(LatLng centerPosition) = _GetMasters;
  const factory HomeEvent.setFilters(Category cat) = _SetFilters;
  const factory HomeEvent.clearFilters() = _ClearFilters;
}
