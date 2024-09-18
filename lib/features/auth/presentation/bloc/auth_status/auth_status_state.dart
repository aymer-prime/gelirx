part of 'auth_status_bloc.dart';

@freezed
class AuthStatusState with _$AuthStatusState {
  const factory AuthStatusState.initialState() = InitialState;
  const factory AuthStatusState.authenticated(UserEntity user) = Authenticated;
  const factory AuthStatusState.unAuthenticated() = UnAuthenticated;
}
