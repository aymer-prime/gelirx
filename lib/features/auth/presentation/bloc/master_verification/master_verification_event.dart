part of 'master_verification_bloc.dart';

@freezed
class MasterVerificationEvent with _$MasterVerificationEvent {
  const factory MasterVerificationEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;
  const factory MasterVerificationEvent.surNameChanged(String surName) =
      _SurNameChanged;
  const factory MasterVerificationEvent.idChanged(String idNumber) = _IdChanged;
  const factory MasterVerificationEvent.birthYearChanged(String birthYear) =
      _BirthYearChanged;
  const factory MasterVerificationEvent.imageChanged(File image) =
      _ImageChanged;
  const factory MasterVerificationEvent.submitInfo(Function onSuccess) =
      _SubmitInfo;
}
