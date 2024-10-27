// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/favorite/data/dtos/favorite_dto.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
class BookingResultDto with _$BookingResultDto {
  const factory BookingResultDto({
    @JsonKey(name: "bookings") required List<BookingResponseDto> bookings,
  }) = _BookingResultDto;
  factory BookingResultDto.fromJson(Map<String, dynamic> json) =>
      _$BookingResultDtoFromJson(json);
}

@freezed
class BookingResponseDto with _$BookingResponseDto {
  @JsonSerializable()
  const factory BookingResponseDto({
    @JsonKey(name: "booking_info") required BookingDto booking,
    required FavoriteDto master,
  }) = _BookingResponseDto;

  factory BookingResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseDtoFromJson(json);
}

@freezed
class BookingDto with _$BookingDto {
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
