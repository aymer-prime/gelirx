import 'package:injectable/injectable.dart';
import '../i_booking_repository.dart';

@LazySingleton()
class BookingUsecase {
  final IBookingRepository repository;

  BookingUsecase(this.repository);

  // Future<Either<ApiException, UserEntity>> call(SocialMediaType type) async {
  //   switch (type) {
  //     case SocialMediaType.Google:
  //       return await repository.signInWithGoogle();
  //     case SocialMediaType.Facebook:
  //       return await repository.signInWithFacebook();
  //     case SocialMediaType.Apple:
  //       return await repository.signInWithApple();
  //     default:
  //       return const Left(ApiException.unknown());
  //   }
  // }
  //
  // Future<Either<ApiException, String>> signInWithPhoneNumber(String phoneNumber) async {
  //   return await repository.signInWithPhoneNumber(phoneNumber);
  // }
  //
  // Future<Either<ApiException, UserEntity>> otpVerification(String verificationId,String otp) async {
  //   return await repository.verifyPhoneNumber(verificationId,otp);
  // }
}
