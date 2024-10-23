part of 'auth_status_bloc.dart';

@freezed
class AuthStatusState with _$AuthStatusState {
  const factory AuthStatusState.initialState() = InitialState;
  const factory AuthStatusState.authenticated(UserInfo user) = Authenticated;
  const factory AuthStatusState.unAuthenticated() = UnAuthenticated;
}
