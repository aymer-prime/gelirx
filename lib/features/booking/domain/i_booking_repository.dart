import 'package:dartz/dartz.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';

abstract class IBookingRepository {
  Future<Either<ApiException, List<Booking>>> getUserBookings(
    String userId,
    String token,
  );
}
