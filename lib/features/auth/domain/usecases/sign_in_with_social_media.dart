import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/resources/enums.dart';
import '../entities/user_entity.dart';
import '../i_auth_repository.dart';

@LazySingleton()
class SignInUseCase {
  final IAuthRepository repository;

  SignInUseCase(this.repository);

  Future<Either<ApiException, UserEntity>> call(SocialMediaType type) async {
    switch (type) {
      case SocialMediaType.Google:
        return await repository.signInWithGoogle();
      case SocialMediaType.Facebook:
        return await repository.signInWithFacebook();
      case SocialMediaType.Apple:
        return await repository.signInWithApple();
      default:
        return const Left(ApiException.unknown());
    }
  }

  Future<Either<ApiException, String>> signInWithPhoneNumber(
      String phoneNumber) async {
    return await repository.signInWithPhoneNumber(phoneNumber);
  }

  Future<Either<ApiException, UserEntity>> otpVerification(
      String verificationId, String otp) async {
    return await repository.verifyPhoneNumber(verificationId, otp);
  }

  Future<Either<ApiException, bool>> checkPhoneNumber(
      String phoneNumber) async {
    return await repository.checkPhoneNumber(phoneNumber);
  }

  Future<Either<ApiException, Unit>> userLogin() async {
    return await repository.userLogin();
  }
}
