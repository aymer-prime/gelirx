
import 'package:injectable/injectable.dart';

import '../domain/i_booking_repository.dart';

@LazySingleton(as: IBookingRepository)
class BookingRepository implements IBookingRepository {


}
