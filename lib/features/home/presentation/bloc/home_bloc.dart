import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
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
  }
}
