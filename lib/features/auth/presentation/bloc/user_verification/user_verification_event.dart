part of 'user_verification_bloc.dart';

@freezed
class UserVerificationEvent with _$UserVerificationEvent {
  const factory UserVerificationEvent.firstNameChanged(String firstName) =
      _FirstNameChanged;
  const factory UserVerificationEvent.surNameChanged(String surName) =
      _SurNameChanged;
  const factory UserVerificationEvent.registerUserInfo(Function onSuccess) =
      _RegisterUserInfo;
}
