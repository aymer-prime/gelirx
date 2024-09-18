import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';

import '../../domain/entities/route_entity.dart';
import '../../domain/usecases/navigation_usecase.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';
part 'navigation_bloc.freezed.dart';


@injectable
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  final NavigationUsecase usecase;

  NavigationBloc(this.usecase) : super(const NavigationState.initial()) {
    on<NavigationEvent>((event, emit) async {
      if (event is _Started) {
        emit(const NavigationState.loading());
        final result = await usecase.getLocationStream();

        result.fold(
              (failure) => emit(NavigationState.error(failure.toString())),
              (positionStream) => emit(NavigationState.success(positionStream)),
        );
      }

      if (event is _GetRoute) {
        emit(const NavigationState.loading());
        final result = await usecase.getRoute(event.start, event.end);

        result.fold(
              (failure) => emit(NavigationState.error(failure.toString())),
              (routeInfo) => emit(NavigationState.routeSuccess(routeInfo)),
        );
      }
    });
  }
}



