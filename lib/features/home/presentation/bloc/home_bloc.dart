import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:gelirx/features/shared/domain/entities/shared_entities.dart';
import 'package:gelirx/features/shared/misc/functions.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _iHomeRepository;
  HomeBloc(this._iHomeRepository) : super(HomeState.initial()) {
    on<_GetCurrentPosition>((event, emit) async {
      var position = await determinePosition();
      await _iHomeRepository.updateUserLocationAndToken(position);
      emit(
        state.copyWith(
          userPosition: some(position),
        ),
      );
    });
    on<_GetCategories>((event, emit) async {
      // emit(
      //   state.copyWith(
      //     isLoading: true,
      //   ),
      // );
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
          const _GetServices(),
        );
      });
    });
    on<_GetSubCategories>((event, emit) async {
      var catId = state.categories[event.catIndex].id;
      // emit(
      //   state.copyWith(
      //     isLoading: true,
      //     catIndex: event.catIndex,
      //     // selectedCategory: catId,
      //   ),
      // );

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

    on<_GetServices>((event, emit) async {
      // emit(
      //   state.copyWith(
      //     isLoading: true,
      //     // selectedCategory: catId,
      //   ),
      // );
      List<UserSkills> services = [];
      for (var i = 0; i < state.categories.length; i++) {
        var subCategories =
            await _iHomeRepository.getSubCategories(state.categories[i].id);
        subCategories.fold(
          (l) => null,
          (categories) => services.add(
            UserSkills(
              skill: state.categories[i],
              subSkill: categories,
            ),
          ),
        );
      }
      emit(
        state.copyWith(
          isLoading: false,
          services: services,
        ),
      );
    });

    on<_GetMasters>((event, emit) async {
      var masters = await _iHomeRepository.getMasters(
          event.centerPosition, state.selectedCategory);
      masters.fold(
        (failure) => emit(state.copyWith(masters: [])),
        (masters) => emit(state.copyWith(masters: masters)),
      );
    });
  }
}
