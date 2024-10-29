import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
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
      add(
        _GetMasters(LatLng(position.latitude, position.longitude)),
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
        ),
        (categories) {
          const Category allCategory = Category(
            id: '-1',
            name: 'All',
            description: '',
            link: '',
            img: Img(
              icon: ImageAssets.locationPin,
              photo: '',
              isIconLocal: true,
            ),
          );
          emit(
            state.copyWith(
              isLoading: false,
              selectedCategory: allCategory.id,
              categories: [allCategory, ...categories],
            ),
          );
          add(
            const _GetServices(),
          );
        },
      );
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
          event.centerPosition, state.selectedCategory?.toString());
      masters.fold(
        (failure) => emit(state.copyWith(masters: [])),
        (masters) => emit(state.copyWith(masters: masters)),
      );
    });

    on<_SetFilters>((event, emit) async {
      var filters = [...state.catFilterIndexes];
      if (filters.firstWhereOrNull((p0) => p0.id == event.cat.id) == null) {
        filters.add(event.cat);
      } else {
        filters.remove(event.cat);
      }
      emit(state.copyWith(catFilterIndexes: filters));
    });

    on<_ClearFilters>((event, emit) async {
      emit(state.copyWith(catFilterIndexes: []));
    });

    on<_SelectSub>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
      ));
      await state.userPosition.fold(
        () async {
          print('no user position');
          emit(state.copyWith(
            isLoading: false,
          ));
        },
        (userPosition) async {
          LatLng position =
              LatLng(userPosition.latitude, userPosition.longitude);
          var result = await _iHomeRepository.getMasters(position, event.subId);
          result.fold(
            (l) => emit(state.copyWith(
              isLoading: false,
            )),
            (selectedMasters) {
              var selectedIndex = state.services
                  .indexWhere((skill) => skill.skill.id == event.id);
              var selectedSkill = state.services[selectedIndex].copyWith(
                masters: selectedMasters,
                selectedSubSkill: event.subId,
              );
              var newServices = [...state.services];
              newServices[selectedIndex] = selectedSkill;
              emit(state.copyWith(
                isLoading: false,
                masters: selectedMasters,
                services: newServices,
              ));
            },
          );
        },
      );
    });

    on<_UnselectSub>((event, emit) async {
      var selectedIndex =
          state.services.indexWhere((skill) => skill.skill.id == event.id);

      var newServices = [...state.services];
      newServices[selectedIndex] = newServices[selectedIndex].copyWith(
        selectedSubSkill: null,
      );
      emit(
        state.copyWith(services: newServices),
      );
    });
    on<_SelectMaster>((event, emit) async {
      emit(
        state.copyWith(selectedMasterId: event.id),
      );
    });
    on<_CallMaster>((event, emit) async {
      emit(
        state.copyWith(isLoading: true),
      );
      await state.userPosition.fold(
        () async => null,
        (userPosition) async {
          var result = await _iHomeRepository.callMaster(
            LatLng(userPosition.latitude, userPosition.longitude),
            'address',
            'description',
            event.id,
          );
          result.fold(
            (l) => emit(
              state.copyWith(isLoading: false),
            ),
            (r) {
              emit(
                state.copyWith(isLoading: false, currentOrderId: some(r)),
              );
              event.onSuccess();
            },
          );
        },
      );
    });
    on<_SelectCategory>((event, emit) async {
      var position = await determinePosition();
      emit(
        state.copyWith(selectedCategory: event.id),
      );
      add(
        _GetMasters(
          LatLng(position.latitude, position.longitude),
        ),
      );
    });
  }
}
