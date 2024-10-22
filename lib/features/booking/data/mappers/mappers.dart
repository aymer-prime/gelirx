import 'package:gelirx/features/booking/data/dtos/booking_dto.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';

extension BookingDtoX on BookingDto {
  Booking toDomain() {
    return Booking(
      id: id,
      userId: userId,
      masterId: masterId,
      categoryId: categoryId,
      latitude: latitude,
      longitude: longitude,
      address: address,
      description: description,
      status: status,
      sendingDate: DateTime.parse(sendingDate),
      processDate: DateTime.parse(processDate),
    );
  }
}
