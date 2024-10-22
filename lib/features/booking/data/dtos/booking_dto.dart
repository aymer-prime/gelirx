import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
class BookingDto with _$BookingDto {
  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory BookingDto({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "master_id") required String masterId,
    @JsonKey(name: "category_id") required String categoryId,
    @JsonKey(name: "latitude") required String latitude,
    @JsonKey(name: "longitude") required String longitude,
    @JsonKey(name: "address") required String address,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "status") required String status,
    @JsonKey(name: "sending_date") required String sendingDate,
    @JsonKey(name: "process_date") required String processDate,
  }) = _BookingDto;

  factory BookingDto.fromJson(Map<String, dynamic> json) =>
      _$BookingDtoFromJson(json);
}

@freezed
class BookingResponseDto with _$BookingResponseDto {
  // ignore: invalid_annotation_target
  @JsonSerializable()
  const factory BookingResponseDto({
    required List<BookingDto> bookings,
  }) = _BookingResponseDto;

  factory BookingResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseDtoFromJson(json);
}
