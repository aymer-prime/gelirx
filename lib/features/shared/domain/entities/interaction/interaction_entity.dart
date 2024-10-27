import 'package:freezed_annotation/freezed_annotation.dart';

part 'interaction_entity.freezed.dart';

@freezed
class Interaction with _$Interaction {
  const factory Interaction({
    required String interactionId,
    required String userId,
    required String name,
    required String surname,
    required String comment,
    required String point,
    required String serviceId,
    required DateTime date,
    required String images,
  }) = _Interaction;
}
