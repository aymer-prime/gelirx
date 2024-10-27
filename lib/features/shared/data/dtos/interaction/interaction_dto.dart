import 'package:freezed_annotation/freezed_annotation.dart';

part 'interaction_dto.freezed.dart';
part 'interaction_dto.g.dart';

@freezed
class InteractionDto with _$InteractionDto {
  const factory InteractionDto({
    @JsonKey(name: "interaction_id") required String interactionId,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "surname") required String surname,
    @JsonKey(name: "comment") required String comment,
    @JsonKey(name: "point") required String point,
    @JsonKey(name: "service_id") required String serviceId,
    @JsonKey(name: "date") required String date,
    @JsonKey(name: "images") required List<String?> images,
  }) = _InteractionDto;

  factory InteractionDto.fromJson(Map<String, dynamic> json) =>
      _$InteractionDtoFromJson(json);
}
