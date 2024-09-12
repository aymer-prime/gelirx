part of 'login_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isMaster,
    required Option<UserEntity> user, // UserEntity from your domain
    required Option<ApiException> exception, // For handling error messages
    required Option<String> verificationId, // Store verification ID
    required Option<String> otp, // Store OTP code
  }) = _LoginState;

  factory AuthState.initial() =>  AuthState(
    isLoading: false,
    isMaster: false,
    user: none(),
    exception: none(),
    verificationId: none(),
    otp: none()
  );
}

