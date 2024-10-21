import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/i_chat_repository.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;

  ChatBloc(this._chatRepository) : super(ChatState.initial()) {
    on<FetchChats>(_onFetchChats);
  }

  Future<void> _onFetchChats(FetchChats event, Emitter<ChatState> emit) async {
    emit(state.copyWith(isLoading: true)); // Update state to loading

    final result = await _chatRepository.getChats();

    result.fold(
          (failure) {
        emit(state.copyWith(isLoading: false, error: failure.toString()));
      },
          (stream) {
        emit(state.copyWith(isLoading: false, chatStream: stream));
      },
    );
  }
}
