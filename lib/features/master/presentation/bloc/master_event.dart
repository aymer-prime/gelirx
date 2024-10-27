part of 'master_bloc.dart';

@freezed
class MasterEvent with _$MasterEvent {
  const factory MasterEvent.getMasterInfo() = _GetMasterInfo;
  const factory MasterEvent.getMasterInteractions() = _GetMasterInteractions;
}
