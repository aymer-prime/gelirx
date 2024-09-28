part of 'master_verification_bloc.dart';

@freezed
class MasterVerificationState with _$MasterVerificationState {
  const factory MasterVerificationState({
    required bool isLoading,
    required bool showErrorMessages,
    required String firstName,
    required String surName,
    required String birthYear,
    required String idNumber,
    required List<UserSkills> allSkills,
    required List<UserSkills> userSkills,
    required Option<File> userImage,
    required Option<Either<ApiException, Unit>> authFailureOrSuccessOption,
  }) = _MasterVerificationState;

  factory MasterVerificationState.initial() => MasterVerificationState(
        isLoading: false,
        showErrorMessages: false,
        firstName: '',
        surName: '',
        birthYear: '',
        idNumber: '',
        allSkills: [],
        userSkills: [],
        userImage: none(),
        authFailureOrSuccessOption: none(),
      );
}
