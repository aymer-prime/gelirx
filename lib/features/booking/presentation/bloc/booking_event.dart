part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.getBookings({UserEntity? currentUser, @Default(false) bool shouldFilter, int? status}) = _GetBookings;
  const factory BookingEvent.updateOrderStatus(String orderId,  int status) = _UpdateOrderStatus;
}
