import 'package:gelirx/features/booking/data/dtos/booking_dto.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/favorite/data/mapers/favorite_mapers.dart';

extension BookingDtoX on BookingResponseDto {
  Booking toDomain() {
    return Booking(
      id: booking.id,
      userId: booking.userId,
      masterId: booking.masterId,
      categoryId: booking.categoryId,
      latitude: booking.latitude,
      longitude: booking.longitude,
      address: booking.address,
      description: booking.description,
      status: booking.status,
      bookingImages: booking.bookingImages,
      sendingDate: DateTime.parse(booking.sendingDate),
      processDate: DateTime.parse(booking.processDate),
      master: master.toDomain(),
    );
  }
}
