import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/shared/domain/entities/interaction/interaction_entity.dart';
import 'package:gelirx/features/shared/domain/i_interactions_repository.dart';
import 'package:gelirx/features/shared/domain/i_shared_repository.dart';
import 'package:injectable/injectable.dart';

part 'master_event.dart';
part 'master_state.dart';
part 'master_bloc.freezed.dart';

@injectable
class MasterBloc extends Bloc<MasterEvent, MasterState> {
  final ISharedRepository _iSharedRepository;
  final IInteractionsRepository _iInteractionsRepository;
  MasterBloc(
    this._iSharedRepository,
    this._iInteractionsRepository,
  ) : super(MasterState.initial()) {
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
    on<_GetMasterInteractions>((event, emit) async {
      emit(state.copyWith(masterInteractions: none()));
      var result =
          await _iInteractionsRepository.getMasterInteractions(event.userId);
      result.fold(
        (l) => emit(state.copyWith(masterInteractions: some(left(l)))),
        (r) => emit(
          state.copyWith(
            masterInteractions: some(right(r)),
          ),
        ),
      );
    });
  }
}
