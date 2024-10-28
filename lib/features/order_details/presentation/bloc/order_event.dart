part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getMasterInfo(String userId) = _GetMasterInfo;
  const factory OrderEvent.setSelectedService(int index) = _SetSelectedService;
  const factory OrderEvent.setImage(int index, File image) = _SetImage;
  const factory OrderEvent.callMaster(
    UserEntity? user,
    String masterId,
    //String categoryId,
    String description,
    String address,
    //Location location,
    //List<File> images,
    VoidCallback onSuccess,
  ) = _CallMaster;
}
