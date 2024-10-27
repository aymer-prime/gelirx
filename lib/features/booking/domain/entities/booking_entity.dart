import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/favorite/domain/entities/favorite_entities.dart';

part 'booking_entity.freezed.dart';

@freezed
abstract class Booking with _$Booking {
  const factory Booking({
    required String id,
    required String userId,
    required String masterId,
    required String categoryId,
    required String latitude,
    required String longitude,
    required String address,
    required String description,
    required String status,
    required DateTime sendingDate,
    required DateTime processDate,
    required Favorite master,
  }) = _Booking;
}
