part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.getBookings(UserEntity? currentUser) = _GetBookings;
}
