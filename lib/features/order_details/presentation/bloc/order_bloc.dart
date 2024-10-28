import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/order_details/domain/i_order_repository.dart';
import 'package:gelirx/features/shared/domain/i_shared_repository.dart';
import 'package:gelirx/features/shared/misc/functions.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final ISharedRepository _iSharedRepository;
  final IOrderRepository _iOrderRepository;
  OrderBloc(
    this._iSharedRepository,
    this._iOrderRepository,
  ) : super(OrderState.initial()) {
    on<_GetMasterInfo>((event, emit) async {
      emit(state.copyWith(masterInfo: none()));
      var result = await _iSharedRepository.getUserInfo(event.userId);
      result.fold(
        (l) => emit(state.copyWith(masterInfo: some(left(l)))),
        (r) => emit(
          state.copyWith(
            masterInfo: some(right(r)),
          ),
        ),
      );
    });
    on<_SetSelectedService>((event, emit) async {
      emit(
        state.copyWith(selectedService: event.index),
      );
    });
    on<_SetImage>((event, emit) async {
      if (event.index + 1 <= state.images.length) {
        var updatedImages = [...state.images];
        updatedImages[event.index] = event.image;
        emit(
          state.copyWith(
            images: updatedImages,
          ),
        );
      } else {
        emit(
          state.copyWith(
            images: [...state.images, event.image],
          ),
        );
      }
    });
    on<_CallMaster>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          callFailureOrSuccessOption: none(),
        ),
      );
      UserEntity? user = event.user;
      if (event.description.isEmpty || event.address.isEmpty) {
        emit(
          state.copyWith(
            isLoading: false,
            callFailureOrSuccessOption: some(
              left(
                const ApiException.defaultException('-1',
                    'the problem explanation and the address cannot be empty.'),
              ),
            ),
          ),
        );
      } else if (user != null) {
        var location = await determinePosition();
        var categoryId = state.masterInfo.fold(
          () => null,
          (a) => a.fold(
            (l) => null,
            (r) => r.services[state.selectedService].id,
          ),
        );
        if (categoryId != null) {
          _iOrderRepository.callMaster(
            event.user!.token,
            event.user!.userId,
            event.masterId,
            categoryId,
            event.description,
            event.address,
            location,
            state.images,
          );
        } else {
          emit(
            state.copyWith(
              isLoading: false,
              callFailureOrSuccessOption: some(
                left(
                  const ApiException.defaultException(
                      '-1', 'No Service Selected!'),
                ),
              ),
            ),
          );
        }
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            callFailureOrSuccessOption: some(
              left(
                const ApiException.unauthorized(),
              ),
            ),
          ),
        );
      }
    });
  }
}
