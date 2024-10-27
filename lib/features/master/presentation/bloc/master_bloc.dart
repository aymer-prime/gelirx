import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/auth/domain/entities/user_entity.dart';
import 'package:gelirx/features/shared/domain/i_shared_repository.dart';
import 'package:injectable/injectable.dart';

part 'master_event.dart';
part 'master_state.dart';
part 'master_bloc.freezed.dart';

@injectable
class MasterBloc extends Bloc<MasterEvent, MasterState> {
  final ISharedRepository _iSharedRepository;
  MasterBloc(this._iSharedRepository) : super(MasterState.initial()) {
    on<MasterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
