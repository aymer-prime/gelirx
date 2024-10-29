part of 'service_interaction_bloc.dart';

@freezed
class ServiceInteractionState with _$ServiceInteractionState {
  const factory ServiceInteractionState({
    required int totalStars,
    required String comment,
    required bool isLoading,
    required bool lockInteractions,
    required Option<Either<ApiException, Unit>>
        interactionFailureOrSuccessOption,
  }) = _ServiceInteractionState;

  factory ServiceInteractionState.initial() => ServiceInteractionState(
        isLoading: false,
        lockInteractions: true,
        totalStars: 0,
        comment: '',
        interactionFailureOrSuccessOption: none(),
      );
}
