import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
class BookingDto with _$BookingDto {
  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory BookingDto({
    required String id,
    required String userId,
    required String masterId,
    required String categoryId,
    required String latitude,
    required String longitude,
    required String address,
    required String description,
    required String status,
    required String sendingDate,
    required String processDate,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);
}
