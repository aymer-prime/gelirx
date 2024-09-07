part of 'login_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required Option<UserEntity> user, // UserEntity from your domain
    required Option<ApiException> exception, // For handling error messages
  }) = _LoginState;

  factory AuthState.initial() =>  AuthState(
    isLoading: false,
    user: none(),
    exception: none(),
  );
}

