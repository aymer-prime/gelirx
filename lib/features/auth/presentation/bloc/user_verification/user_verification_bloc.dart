import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/i_auth_repository.dart';
import 'package:injectable/injectable.dart';

part 'user_verification_event.dart';
part 'user_verification_state.dart';
part 'user_verification_bloc.freezed.dart';

@injectable
class UserVerificationBloc
    extends Bloc<UserVerificationEvent, UserVerificationState> {
  final IAuthRepository _iAuthRepository;
  UserVerificationBloc(this._iAuthRepository)
      : super(UserVerificationState.initial()) {
    on<_FirstNameChanged>((event, emit) async {
      emit(state.copyWith(
        firstName: event.firstName,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_SurNameChanged>((event, emit) async {
      emit(state.copyWith(
        surName: event.surName,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_RegisterUserInfo>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      var isInfoValid = infoValidate();
      if (isInfoValid) {
        var result = await _iAuthRepository.registerUserInfo(
          state.firstName,
          state.surName,
        );
        result.fold(
          (l) {
            if (!emit.isDone) {
              emit(
                state.copyWith(
                  isLoading: false,
                  authFailureOrSuccessOption: some(left(l)),
                ),
              );
            }
          },
          (_) {
            if (!emit.isDone) {
              emit(
                state.copyWith(
                  isLoading: false,
                  authFailureOrSuccessOption: some(right(unit)),
                ),
              );
            }
            event.onSuccess();
          },
        );
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            showErrorMessages: true,
          ),
        );
      }
    });
  }
  bool infoValidate() {
    var isNameValid = state.firstName.isNotEmpty;
    var isSurNameValid = state.surName.isNotEmpty;
    return (isNameValid && isSurNameValid);
  }
}
