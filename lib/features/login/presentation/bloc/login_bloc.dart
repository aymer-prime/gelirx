import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/resources/enums.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/sign_in_with_social_media.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase _SignInUseCase;

  AuthBloc(this._SignInUseCase) : super(AuthState.initial()) {
    on<_SetUserType>(
      (event, emit) => emit(
        state.copyWith(
          isMaster: event.isMaster,
        ),
      ),
    );

    on<_SocialMediaLogin>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      print(event.type);
      final result = await _SignInUseCase.call(event.type);
      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          exception: some(failure),
        )),
        (user) => emit(state.copyWith(
          isLoading: false,
          user: some(user),
        )),
      );
    });

    on<_PhoneLoginRequested>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result =
          await _SignInUseCase.signInWithPhoneNumber(event.phoneNumber);
      result.fold(
        (failure) => emit(state.copyWith(
          isLoading: false,
          exception: some(failure),
        )),
        (verificationId) => emit(state.copyWith(
          isLoading: false,
          verificationId: some(verificationId),
        )),
      );
    });

    on<_VerifyPhoneNumber>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      print(event.verificationId); // You may want to log this instead.

      final result = await _SignInUseCase.otpVerification(
          event.verificationId, event.smsCode); // Assuming you pass both.
      result.fold(
          (failure) => emit(state.copyWith(
                isLoading: false,
                exception: some(failure),
              )), (user) {
        print("user {$user}");
        emit(state.copyWith(
          isLoading: false,
          user: some(user),
        ));
      });
    });
  }
}
