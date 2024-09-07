import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';

import 'entities/user_entity.dart';
//todo modify it work with api
abstract class IAuthRepository {
  Future<Either<ApiException, UserEntity>> signInWithGoogle();
  Future<Either<ApiException, UserEntity>> signInWithFacebook();
  Future<Either<ApiException, UserEntity>> signInWithApple();
  Future<Either<ApiException, UserEntity>> signInWithPhone(String phoneNumber);
  Future<Either<ApiException, void>> verifyPhoneNumber(String verificationId, String smsCode);
}
