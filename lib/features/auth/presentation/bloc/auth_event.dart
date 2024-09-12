part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  // todo: explanation
  const factory AuthEvent.setUserType(bool isMaster) = _SetUserType;
  const factory AuthEvent.socialMediaLogin(SocialMediaType type) =
      _SocialMediaLogin;
  const factory AuthEvent.phoneLoginRequested({required String phoneNumber}) =
      _PhoneLoginRequested;
  const factory AuthEvent.verifyPhoneNumber({
    required String verificationId,
    required String smsCode,
  }) = _VerifyPhoneNumber;
}
