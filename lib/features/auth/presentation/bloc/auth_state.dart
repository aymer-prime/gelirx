part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isMaster,
    required bool isRegister,
    required int requestAgainTime,
    required Option<UserEntity> user, // UserEntity from your domain
    required Option<Either<ApiException, Unit>>
        authFailureOrSuccessOption, // For handling error messages
    required Option<String> verificationId, // Store verification ID
    required Option<String> otp, // Store OTP code
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isLoading: false,
        isMaster: false,
        isRegister: false,
        requestAgainTime: 0,
        user: none(),
        authFailureOrSuccessOption: none(),
        verificationId: none(),
        otp: none(),
      );
}
