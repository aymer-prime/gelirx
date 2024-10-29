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
  const factory HomeEvent.selectSub(String id, String subId) = _SelectSub;
  const factory HomeEvent.unselectSub(String id) = _UnselectSub;
  const factory HomeEvent.selectMaster(String id) = _SelectMaster;
  const factory HomeEvent.selectCategory(String id) = _SelectCategory;
  const factory HomeEvent.callMaster(String id, VoidCallback onSuccess) =
      _CallMaster;
}
