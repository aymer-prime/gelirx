part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.loading() = _Loading;
  const factory BookingState.loadSuccess(List<Booking> bookings) = _LoadSuccess;
  const factory BookingState.loadFailed(ApiException apiException) =
      _LoadFailed;
}
