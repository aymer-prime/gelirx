import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:gelirx/app/network/api_exception.dart';
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

  AuthRepository({
    required this.firebaseAuth,
    required this.googleSignIn,
    required this.facebookAuth,
    required this.phoneAuth
  });

  // Sign in with Google
  @override
  Future<Either<ApiException, UserEntity>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return left(const ApiException.defaultException("12501", 'Google Sign-in cancelled'));
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
      final User user = userCredential.user!;

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
        final AuthCredential credential = FacebookAuthProvider.credential(result.accessToken!.tokenString);

        final UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
        final User user = userCredential.user!;

        return right(UserEntity(
          id: user.uid,
          name: user.displayName,
          email: user.email,
        ));
      } else {
        return left(ApiException.defaultException(result.status.name, result.message ?? ""));
      }
    } on FirebaseAuthException  catch (e) {
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

      final UserCredential userCredential = await firebaseAuth.signInWithCredential(oauthCredential);
      final User user = userCredential.user!;

      return right(UserEntity(
        id: user.uid,
        name: user.displayName,
        email: user.email,
      ));
    } on FirebaseAuthException  catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }

  // Sign in with Phone Number (start verification)
  @override
  Future<Either<ApiException, UserEntity>> signInWithPhone(String phoneNumber) async {
    try {
      await firebaseAuth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await firebaseAuth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          throw ApiException.defaultException(e.code,  e.message ?? 'Verification failed');
        },
        codeSent: (String verificationId, int? resendToken) {
          // This would trigger UI to ask the user for the verification code.
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
      return right(UserEntity(id: '', phoneNumber: phoneNumber));
    } on FirebaseAuthException  catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }

  // Verify Phone Number with SMS Code
  @override
  Future<Either<ApiException, UserEntity>> verifyPhoneNumber(String verificationId, String smsCode) async {
    try {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);
      final UserCredential userCredential = await firebaseAuth.signInWithCredential(credential);
      final User user = userCredential.user!;

      return right(UserEntity(
        id: user.uid,
        phoneNumber: user.phoneNumber,
      ));
    } on FirebaseAuthException catch (e) {
      return left(ApiException.defaultException(e.code, e.message ?? ""));
    }
  }
}
