import 'dart:async';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:geolocator/geolocator.dart';

import 'entities/user_entity.dart';

//todo modify it work with api
abstract class IAuthRepository {
  // Future<Either<ApiException, UserEntity>> signInWithGoogle();
  // Future<Either<ApiException, UserEntity>> signInWithFacebook();
  // Future<Either<ApiException, UserEntity>> signInWithApple();
  Future<Either<ApiException, String>> signInWithPhoneNumber(
      String phoneNumber);
  Future<Either<ApiException, Unit>> verifyPhoneNumber(
      String verificationId, String smsCode);
  Future<Either<ApiException, Unit>> registerMasterInfo(
    String firstName,
    String surName,
    String idNumber,
    String birthYear,
    Position userPosition,
  );
  Future<Either<ApiException, Unit>> registerUserInfo(
      String firstName, String surName);
  Future<Either<ApiException, Unit>> registerUserImage(File userImage);
  Future<Either<ApiException, Unit>> registerUserSkills(
      List<String> userSkills);
  Future<Either<ApiException, bool>> checkPhoneNumber(String phoneNumber);
  Future<Either<ApiException, UserEntity>> userLogin();
  Option<UserEntity> getSignedInUser();
  Future<void> signOut();
}
