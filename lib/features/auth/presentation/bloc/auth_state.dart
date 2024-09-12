part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isMaster,
    required String firstName,
    required String surName,
    required String idNumber,
    required Option<File> userImage,
    required Option<UserEntity> user, // UserEntity from your domain
    required Option<ApiException> exception, // For handling error messages
    required Option<String> verificationId, // Store verification ID
    required Option<String> otp, // Store OTP code
  }) = _LoginState;

  factory AuthState.initial() => AuthState(
        isLoading: false,
        isMaster: false,
        firstName: '',
        surName: '',
        idNumber: '',
        userImage: none(),
        user: none(),
        exception: none(),
        verificationId: none(),
        otp: none(),
      );
}
