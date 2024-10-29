part of 'service_interaction_bloc.dart';

@freezed
class ServiceInteractionEvent with _$ServiceInteractionEvent {
  const factory ServiceInteractionEvent.setStars(int totalStars) = _SetStars;
  const factory ServiceInteractionEvent.setComment(String comment) =
      _SetComment;
  const factory ServiceInteractionEvent.addInteraction(
      UserEntity? user, String masterId, String serviceId) = _AddInteraction;
}
