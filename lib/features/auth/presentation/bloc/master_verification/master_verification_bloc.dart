import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

part 'master_verification_event.dart';
part 'master_verification_state.dart';
part 'master_verification_bloc.freezed.dart';

@injectable
class MasterVerificationBloc
    extends Bloc<MasterVerificationEvent, MasterVerificationState> {
  MasterVerificationBloc() : super(MasterVerificationState.initial()) {
    on<MasterVerificationEvent>((event, emit) {
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
      on<_IdChanged>((event, emit) async {
        emit(state.copyWith(
          idNumber: event.idNumber,
          authFailureOrSuccessOption: none(),
        ));
      });
      on<_BirthYearChanged>((event, emit) async {
        emit(state.copyWith(
          birthYear: event.birthYear,
          authFailureOrSuccessOption: none(),
        ));
      });
      on<_ImageChanged>((event, emit) async {
        emit(state.copyWith(
          userImage: some(event.image),
          authFailureOrSuccessOption: none(),
        ));
      });
      on<_SubmitInfo>((event, emit) async {
        var isInfoValid = infoValidate();
        if (isInfoValid) {
          event.onSuccess();
        } else {
          emit(
            state.copyWith(
              showErrorMessages: true,
            ),
          );
        }
      });
    });
  }
  bool infoValidate() {
    var isNameValid = state.firstName.isNotEmpty;
    var isSurNameValid = state.surName.isNotEmpty;
    var isIdValid = state.idNumber.isNotEmpty;
    var isYearValid = state.birthYear.isNotEmpty;
    var isPicValid = state.userImage.isSome();
    return (isNameValid &&
        isSurNameValid &&
        isIdValid &&
        isYearValid &&
        isPicValid);
  }
}
