part of 'master_bloc.dart';

@freezed
class MasterEvent with _$MasterEvent {
  const factory MasterEvent.getMasterInfo(String userId) = _GetMasterInfo;
  const factory MasterEvent.getMasterInteractions(String userId) =
      _GetMasterInteractions;
}
