part of 'login_bloc.dart';


@freezed
class AuthEvent with _$AuthEvent {
  // todo: explanation
  const factory AuthEvent.socialMediaLogin(SocialMediaType type) = _SocialMediaLogin;
  const factory AuthEvent.googleLoginRequested() = _GoogleLoginRequested;
  const factory AuthEvent.facebookLoginRequested() = _FacebookLoginRequested;
  const factory AuthEvent.appleLoginRequested() = _AppleLoginRequested;
  const factory AuthEvent.phoneLoginRequested({required String phoneNumber}) = _PhoneLoginRequested;
  const factory AuthEvent.verifyPhoneNumber({required String verificationId, required String smsCode}) = _VerifyPhoneNumber;
}