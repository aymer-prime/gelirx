import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gelirx/app/local_services/local_services.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/auth/data/mappers/firebase_user_maper.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../domain/entities/user_entity.dart';
import '../domain/i_auth_repository.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FacebookAuth facebookAuth;
  final FirebaseAuth phoneAuth;
  final FirebaseUserMapper firebaseUserMapper;
  final LocalService _localService;
  final RemoteService _remoteService;

  AuthRepository(
    this.firebaseAuth,
    this.googleSignIn,
    this.facebookAuth,
    this.phoneAuth,
    this.firebaseUserMapper,
    this._localService,
    this._remoteService,
  );

  // Sign in with Google
  @override
  Future<Either<ApiException, UserEntity>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return left(const ApiException.defaultException(
            "12501", 'Google Sign-in cancelled'));
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);
      final User user = userCredential.user!;

      User? user1 = FirebaseAuth.instance.currentUser;

      if (user1 != null) {
        // Asynchronously get the ID token
        String? idToken = await user1.getIdToken();

        // Now you can print the ID token
        print(idToken);
      } else {
        print('No user is signed in.');
      }
      return right(UserEntity(
        id: user.uid,
        name: user.displayName,
        email: user.email,
      ));
    } on FirebaseAuthException catch (e) {
      return left(ApiException.defaultException(e.code, e.toString()));
    }
  }

  // Sign in with Facebook
  @override
  Future<Either<ApiException, UserEntity>> signInWithFacebook() async {
    try {
      final LoginResult result = await facebookAuth.login();
      if (result.status == LoginStatus.success) {
        final AuthCredential credential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);

        final UserCredential userCredential =
            await firebaseAuth.signInWithCredential(credential);
        final User user = userCredential.user!;

        return right(UserEntity(
          id: user.uid,
          name: user.displayName,
          email: user.email,
        ));
      } else {
        return left(ApiException.defaultException(
            result.status.name, result.message ?? ""));
      }
    } on FirebaseAuthException catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }

  // Sign in with Apple
  @override
  Future<Either<ApiException, UserEntity>> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      final UserCredential userCredential =
          await firebaseAuth.signInWithCredential(oauthCredential);
      final User user = userCredential.user!;

      return right(UserEntity(
        id: user.uid,
        name: user.displayName,
        email: user.email,
      ));
    } on FirebaseAuthException catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }

  // Sign in with Phone Number (start verification)
  @override
  Future<Either<ApiException, String>> signInWithPhoneNumber(
      String phoneNumber) async {
    try {
      final verificationIdCompleter = Completer<String>();

      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          try {
            await firebaseAuth.signInWithCredential(credential);
            // Handle auto-sign-in if needed
          } catch (signInError) {
            print('Sign-in error: ${signInError.toString()}');
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          // Print the detailed error message for more insight
          print('Verification failed with error code: ${e.code}');
          print('Error message: ${e.message}');
          throw ApiException.defaultException(
              e.code, e.message ?? 'Verification failed');
        },
        codeSent: (String verificationId, int? resendToken) {
          verificationIdCompleter.complete(verificationId);
          // Optionally, display a message or UI for inputting the verification code.
          print('Code sent to $phoneNumber');
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Optionally, handle the timeout case.
          print('Auto-retrieval timeout for verification ID: $verificationId');
        },
      );

      final verificationId = await verificationIdCompleter.future;
      return right(verificationId);
    } on FirebaseAuthException catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }

  // Verify Phone Number with SMS Code
  @override
  Future<Either<ApiException, UserEntity>> verifyPhoneNumber(
      String verificationId, String smsCode) async {
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);
      final UserCredential userCredential =
          await firebaseAuth.signInWithCredential(credential);
      final User user = userCredential.user!;
      User? user1 = FirebaseAuth.instance.currentUser;

      if (user1 != null) {
        // Asynchronously get the ID token
        String? idToken = await user1.getIdToken();

        // Now you can print the ID token
        print(idToken);
      } else {
        print('No user is signed in.');
      }
      return right(UserEntity(
        id: user.uid,
        phoneNumber: user.phoneNumber,
      ));
    } on FirebaseAuthException catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }

  @override
  Future<Either<ApiException, Unit>> registerMasterInfo(
    String firstName,
    String surName,
    String idNumber,
    String birthYear,
    Position userPosition,
  ) async {
    try {
      var idToken = await firebaseAuth.currentUser!.getIdToken();
      var fcmToken = await FirebaseMessaging.instance.getToken();
      var longitude = userPosition.longitude;
      var latitude = userPosition.latitude;
      var data = {
        'lang': 'tr',
        'idToken': idToken,
        'firebase_token': fcmToken,
        'longitude': longitude,
        'latitude': latitude,
        'id_number': idNumber,
        'name': firstName,
        'surname': surName,
        'birthdate': birthYear,
      };
      var response = await _remoteService.post(
        '${Constants.baseUrl}master/register.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      if (response != null) {
        String token = response['token'];
        String userId = response['user_id'];
        await _localService.save(Constants.tokenKey, token);
        await _localService.save(Constants.userIdKey, userId);
      }

      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }

  @override
  Future<Either<ApiException, Unit>> registerUserImage(File userImage) async {
    try {
      var token = _localService.get(Constants.tokenKey);
      var userId = _localService.get(Constants.userIdKey);
      List<int> imageBytes = await userImage.readAsBytes();
      String base64Image = base64Encode(imageBytes);
      var data = FormData.fromMap({
        'lang': 'tr',
        'user_id': userId,
        'token': token,
        'img': base64Image,
        //'img': await MultipartFile.fromFile(userImage.path),
      });
      //var response = 
      await _remoteService.post(
        '${Constants.baseUrl}master/picture.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }

  @override
  Future<Either<ApiException, Unit>> registerUserSkills(
      List<String> userSkills) async {
    try {
      var token = _localService.get(Constants.tokenKey);
      var userId = _localService.get(Constants.userIdKey);
      var data = {
        'lang': 'tr',
        'user_id': userId,
        'token': token,
        'category_id': userSkills.join(','),
      };
      //var response = 
      await _remoteService.post(
        '${Constants.baseUrl}master/choose_skills.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }

  @override
  Option<UserEntity> getSignedInUser() {
    final authToken = _localService.get(Constants.tokenKey);
    final userId = _localService.get(Constants.userIdKey);
    if (authToken != null && userId != null) {
      try {
        //todo get the user data from the backend using the token
        return optionOf(firebaseUserMapper.toDomain(firebaseAuth.currentUser));
      } catch (e) {
        return none();
      }
    } else {
      return none();
    }
  }

  @override
  Future<List<void>> signOut() async {
    await _localService.delete(Constants.tokenKey);
    await _localService.delete(Constants.userIdKey);
    return Future.wait([
      //firebaseAuth.signOut(),
      //googleSignIn.signOut(),
      //facebookAuth.logOut(),
      phoneAuth.signOut(),
    ]);
  }

  @override
  Future<Either<ApiException, Unit>> registerUserInfo(
      String firstName, String surName) async {
    try {
      var idToken = await firebaseAuth.currentUser!.getIdToken();
      var fcmToken = await FirebaseMessaging.instance.getToken();
      var data = {
        'lang': 'tr',
        'idToken': idToken,
        'firebase_token': fcmToken,
        'name': firstName,
        'surname': surName,
      };
      var response = await _remoteService.post(
        '${Constants.baseUrl}login/register.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      if (response != null) {
        String token = response['token'];
        String userId = response['user_id'];
        await _localService.save(Constants.tokenKey, token);
        await _localService.save(Constants.userIdKey, userId);
      }

      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }

  @override
  Future<Either<ApiException, bool>> checkPhoneNumber(
      String phoneNumber) async {
    try {
      var data = {
        'lang': 'tr',
        'phone': phoneNumber,
      };
      bool response = await _remoteService.post(
        '${Constants.baseUrl}login/phone_control.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      return right(response);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }

  @override
  Future<Either<ApiException, Unit>> userLogin() async {
    try {
      var idToken = await firebaseAuth.currentUser!.getIdToken();
      var fcmToken = await FirebaseMessaging.instance.getToken();
      var data = {
        'lang': 'tr',
        'idToken': idToken,
        'firebase_token': fcmToken,
      };
      var response = await _remoteService.post(
        '${Constants.baseUrl}login/index.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: data,
      );
      if (response != null) {
        String token = response['token'];
        String userId = response['user_id'];
        await _localService.save(Constants.tokenKey, token);
        await _localService.save(Constants.userIdKey, userId);
      }

      return right(unit);
    } on ApiException catch (e) {
      return left(e);
    } catch (e) {
      return left(
        ApiException.defaultException('-1', e.toString()),
      );
    }
  }
}
