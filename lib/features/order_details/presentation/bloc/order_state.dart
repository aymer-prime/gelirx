part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  factory OrderState({
    required bool isLoading,
    required Option<Either<ApiException, UserInfo>> masterInfo,
    required int selectedService,
    required String problemDetails,
    required List<File> images,
    required Option<Either<ApiException, Unit>> callFailureOrSuccessOption,
  }) = _OrderState;

  factory OrderState.initial() => OrderState(
        isLoading: false,
        masterInfo: none(),
        selectedService: 0,
        problemDetails: '',
        images: [],
        callFailureOrSuccessOption: none(),
      );
}
