import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/resources/enums.dart';
import '../entities/user_entity.dart';
import '../i_auth_repository.dart';

@LazySingleton()
class SignInWithSocialMediaUseCase {
  final IAuthRepository repository;

  SignInWithSocialMediaUseCase(this.repository);

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
}