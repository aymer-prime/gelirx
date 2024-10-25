import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/resources/enums.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/sign_in_with_social_media.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@LazySingleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  StreamSubscription<int>? _tickerSubscription;
  AuthBloc(this._signInUseCase) : super(AuthState.initial()) {
    on<_SetUserType>(
      (event, emit) => emit(
        state.copyWith(
          isMaster: event.isMaster,
        ),
      ),
    );

    // on<_SocialMediaLogin>((event, emit) async {
    //   emit(state.copyWith(
    //     isLoading: true,
    //     authFailureOrSuccessOption: none(),
    //   ));
    //   print(event.type);
    //   final result = await _signInUseCase.call(event.type);
    //   result.fold(
    //     (failure) => emit(state.copyWith(
    //       isLoading: false,
    //       authFailureOrSuccessOption: some(left(failure)),
    //     )),
    //     (user) => emit(state.copyWith(
    //       isLoading: false,
    //       user: some(user),
    //       authFailureOrSuccessOption: some(right(unit)),
    //     )),
    //   );
    // });

    on<_PhoneLoginRequested>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        verificationId: none(),
        authFailureOrSuccessOption: none(),
      ));
      var isLogin = await _signInUseCase.checkPhoneNumber(event.phoneNumber);
      await isLogin.fold(
        (failure) async => emit(state.copyWith(
          isLoading: false,
          authFailureOrSuccessOption: some(left(failure)),
        )),
        (numExist) async {
          final result =
              await _signInUseCase.signInWithPhoneNumber(event.phoneNumber);
          result.fold(
            (failure) => emit(state.copyWith(
              isLoading: false,
              isRegister: numExist,
              authFailureOrSuccessOption: some(left(failure)),
            )),
            (verificationId) {
              emit(state.copyWith(
                  isLoading: false,
                  isRegister: numExist,
                  verificationId: some(verificationId),
                  requestAgainTime: 30));
              event.onSuccess();
            },
          );
        },
      );
    });
    on<_VerifyPhoneNumber>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));
      print(event.verificationId); // You may want to log this instead.

      final result = await _signInUseCase.otpVerification(
          event.verificationId, event.smsCode); // Assuming you pass both.
      await result.fold(
        (failure) async => emit(state.copyWith(
          isLoading: false,
          authFailureOrSuccessOption: some(left(failure)),
        )),
        (_) async {
          //print("user {$user}");
          if (state.isRegister) {
            emit(state.copyWith(
              isLoading: false,
              //user: some(user),
              authFailureOrSuccessOption: some(right(unit)),
            ));
          } else {
            final response = await _signInUseCase.userLogin();
            response.fold(
              (failure) => emit(state.copyWith(
                isLoading: false,
                authFailureOrSuccessOption: some(left(failure)),
              )),
              (userEntity) {
                emit(state.copyWith(
                  isLoading: false,
                  user: some(userEntity),
                  authFailureOrSuccessOption: some(right(unit)),
                ));
                event.onSuccess(userEntity);
              },
            );
          }
        },
      );
    });
    on<_SetRequestTimer>((event, emit) {
      emit(state.copyWith(requestAgainTime: event.requestTime));
    });
  }
}
