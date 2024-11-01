import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:firebase_auth/firebase_auth.dart';

@immutable
@module
abstract class InjectableModules {
  @lazySingleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  // @lazySingleton
  // GoogleSignIn get googleSignIn => GoogleSignIn();

  // @lazySingleton
  // FacebookAuth get facebookAuth => FacebookAuth.instance;

  // @lazySingleton
  // SignInWithApple get signInWithApple => SignInWithApple();

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  @lazySingleton
  Dio get dio => Dio();
}
