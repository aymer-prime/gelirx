part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.loadSuccess(UserInfo userInfo) = _LoadSuccess;
  const factory ProfileState.loadFailed(ApiException apiException) =
  _LoadFailed;
}