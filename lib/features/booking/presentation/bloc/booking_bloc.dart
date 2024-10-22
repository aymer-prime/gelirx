import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/booking/domain/i_booking_repository.dart';
import 'package:injectable/injectable.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final IBookingRepository _iBookingRepository;
  BookingBloc(this._iBookingRepository) : super(const _Initial()) {
    on<_GetBookings>((event, emit) async {
      emit(const BookingState.loading());
      var resultList = await _iBookingRepository.getUserBookings(event.userId);
      resultList.fold(
        (apiException) => emit(BookingState.loadFailed(apiException)),
        (bookingsList) => emit(BookingState.loadSuccess(bookingsList)),
      );
    });
  }
}
