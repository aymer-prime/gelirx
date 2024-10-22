import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/network/remote_service.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/features/booking/data/dtos/booking_dto.dart';
import 'package:gelirx/features/booking/data/mappers/mappers.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/booking/domain/i_booking_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBookingRepository)
class BookingRepository implements IBookingRepository {
  final RemoteService _remoteService;

  const BookingRepository(
    this._remoteService,
  );
  @override
  Future<Either<ApiException, List<Booking>>> getUserBookings(
      String userId) async {
    try {
      var response = await _remoteService.post(
        '${Constants.baseUrl}services/booking-history.php',
        options: Options(
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
          },
        ),
        data: {
          'lang': 'tr',
          'master_id': userId,
        },
      );
      final BookingResponseDto responseData =
          BookingResponseDto.fromJson(response);
      final List<Booking> resultList = responseData.bookings
          .map(
            (e) => e.toDomain(),
          )
          .toList();
      return right(resultList);
    } on ApiException catch (e) {
      return left(e);
    }
  }
}
