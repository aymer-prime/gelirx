part of 'master_bloc.dart';

@freezed
class MasterState with _$MasterState {
  factory MasterState({
    required Option<Either<ApiException, UserInfo>> masterInfo,
    required Option<Either<ApiException, List<Interaction>>> masterInteractions,
  }) = _MasterState;

  factory MasterState.initial() => MasterState(
        masterInfo: none(),
        masterInteractions: none(),
      );
}
