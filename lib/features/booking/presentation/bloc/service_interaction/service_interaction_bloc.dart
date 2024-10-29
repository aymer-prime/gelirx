import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/shared/domain/i_interactions_repository.dart';
import 'package:injectable/injectable.dart';

part 'service_interaction_event.dart';
part 'service_interaction_state.dart';
part 'service_interaction_bloc.freezed.dart';

@injectable
class ServiceInteractionBloc
    extends Bloc<ServiceInteractionEvent, ServiceInteractionState> {
  final IInteractionsRepository _iInteractionsRepository;
  ServiceInteractionBloc(this._iInteractionsRepository)
      : super(ServiceInteractionState.initial()) {
    on<_SetStars>((event, emit) {
      emit(
        state.copyWith(
          totalStars: event.totalStars,
          lockInteractions: false,
        ),
      );
    });
    on<_SetComment>((event, emit) {
      emit(state.copyWith(
          comment: event.comment, interactionFailureOrSuccessOption: none()));
    });
    on<_AddInteraction>((event, emit) async {
      emit(state.copyWith(
          isLoading: true,
          lockInteractions: true,
          interactionFailureOrSuccessOption: none()));
      var user = event.user;
      if (user != null) {
        var result = await _iInteractionsRepository.addInteraction(
          user.token,
          user.userId,
          event.masterId,
          event.serviceId,
          state.totalStars,
          state.comment,
        );
        result.fold(
          (l) => emit(state.copyWith(
            isLoading: false,
            lockInteractions: false,
            interactionFailureOrSuccessOption: some(
              left(l),
            ),
          )),
          (r) => emit(state.copyWith(
            isLoading: false,
            lockInteractions: true,
            interactionFailureOrSuccessOption: some(
              right(unit),
            ),
          )),
        );
      } else {
        await Future.delayed(const Duration(milliseconds: 500));
        emit(state.copyWith(
          isLoading: false,
          lockInteractions: false,
          interactionFailureOrSuccessOption: some(
            left(
              const ApiException.defaultException(
                  '-1', 'Unauthorized: please login first.'),
            ),
          ),
        ));
      }
    });
  }
}
