import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:gelirx/features/shared/misc/functions.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _iHomeRepository;
  HomeBloc(this._iHomeRepository) : super(HomeState.initial()) {
    on<_GetCurrentPosition>((event, emit) async {
      var position = await determinePosition();
      emit(
        state.copyWith(
          userPosition: some(position),
        ),
      );
    });
    on<_GetRange>((event, emit) async {
      emit(
        state.copyWith(
          range: event.range,
        ),
      );
    });
    on<_GetCategories>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      var categories = await _iHomeRepository.getCategories();
      categories.fold(
          (l) => emit(
                state.copyWith(
                  isLoading: false,
                  categories: [],
                ),
              ), (categories) {
        emit(
          state.copyWith(
            isLoading: false,
            categories: categories,
          ),
        );
        add(
          const _GetSubCategories(
            catIndex: 0,
          ),
        );
      });
    });
    on<_GetSubCategories>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          catIndex: event.catIndex,
        ),
      );
      var catId = state.categories[event.catIndex].id;
      var categories = await _iHomeRepository.getSubCategories(catId);
      categories.fold(
        (l) => emit(
          state.copyWith(
            isLoading: false,
            subCategories: [],
          ),
        ),
        (categories) => emit(
          state.copyWith(
            isLoading: false,
            subCategories: categories,
          ),
        ),
      );
    });
  }
}
