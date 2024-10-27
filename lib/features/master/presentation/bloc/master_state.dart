part of 'master_bloc.dart';

@freezed
class MasterState with _$MasterState {
  factory MasterState({
    required Option<UserInfo> masterInfo,
    required Option<Unit> masterInteractions,
  }) = _MasterState;

  factory MasterState.initial() => MasterState(
        masterInfo: none(),
        masterInteractions: none(),
      );
}
