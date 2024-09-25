part of 'user_verification_bloc.dart';

@freezed
class UserVerificationState with _$UserVerificationState {
  const factory UserVerificationState({
    required bool isLoading,
    required bool showErrorMessages,
    required String firstName,
    required String surName,
    required Option<Either<ApiException, Unit>> authFailureOrSuccessOption,
  }) = _UserVerificationState;

  factory UserVerificationState.initial() => UserVerificationState(
        isLoading: false,
        showErrorMessages: false,
        firstName: '',
        surName: '',
        authFailureOrSuccessOption: none(),
      );
}
