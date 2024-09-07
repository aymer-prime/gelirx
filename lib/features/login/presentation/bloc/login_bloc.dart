import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/utils/resources/enums.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/i_auth_repository.dart';
import '../../domain/usecases/sign_in_with_social_media.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInWithSocialMediaUseCase _SignInWithSocialMediaUseCase;

  AuthBloc(this._SignInWithSocialMediaUseCase) : super(AuthState.initial()) {

    on<_SocialMediaLogin>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final result = await _SignInWithSocialMediaUseCase.call(event.type);
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
  }
}
