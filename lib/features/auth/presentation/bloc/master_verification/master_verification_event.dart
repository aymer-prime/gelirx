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
  const factory MasterVerificationEvent.getSkills() = _GetSkills;
  const factory MasterVerificationEvent.getSubSkills(String skillId) =
      _GetSubSkills;
  const factory MasterVerificationEvent.setUserSkills(
      Category selectedSubSkill) = _SetUserSkills;
  const factory MasterVerificationEvent.registerUserInfo(Function onSuccess) =
      _RegisterUserInfo;
  const factory MasterVerificationEvent.registerUserImage(Function onSuccess) =
      _RegisterUserImage;
  const factory MasterVerificationEvent.registerUserSkills(Function onSuccess) =
      _RegisterUserSkills;
}
