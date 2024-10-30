import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/booking/domain/i_booking_repository.dart';
import 'package:gelirx/features/shared/domain/i_shared_repository.dart';
import 'package:injectable/injectable.dart';
part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  final IBookingRepository _iBookingRepository;
  final ISharedRepository _iSharedRepository;
  BookingBloc(this._iBookingRepository, this._iSharedRepository) : super(const _Initial()) {
    on<_GetBookings>((event, emit) async {
      emit(const BookingState.loading());
      final user = event.currentUser;
      if (user != null) {
        var resultList =
            await _iBookingRepository.getUserBookings(user.userId, user.token);
        resultList.fold(
              (apiException) => emit(BookingState.loadFailed(apiException)),
              (bookingsList) {
            if (event.shouldFilter) {
              bookingsList = bookingsList.where((booking) {
                return booking.masterId == user.userId && booking.status == event.status.toString();
              }).toList();
            }
            emit(BookingState.loadSuccess(bookingsList));
          },
        );
      } else {
        emit(const BookingState.loadFailed(ApiException.unauthorized()));
      }
    });
    on<_UpdateOrderStatus>((event, emit) async {
      emit(const BookingState.loading());

      var result = await _iSharedRepository.updateOrderStatus(event.orderId, event.status);
      result.fold(
            (apiException) => emit(BookingState.loadFailed(apiException)),
            (updatedBookingList) {
          // Access the current booking list from the state
          final currentState = state;
          if (currentState is _LoadSuccess) {
            // Make a copy of the current booking list
            var updatedBookingsList = List<Booking>.from(currentState.bookings);

            // Check event.status and apply the necessary filter
            if (event.status == 0 ) {
              updatedBookingsList.removeWhere((booking) => booking.id == event.orderId);
              emit(BookingState.loadSuccess(updatedBookingsList));
            }
            else if (event.status == 2) {
              emit(BookingState.loadSuccess([]));
            }
          } else {
           // emit(BookingState.loadSuccess(updatedBookingList));
          }
        },
      );
    });
  }

  }

