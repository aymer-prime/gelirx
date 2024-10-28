import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:injectable/injectable.dart';

import '../../domain/i_chat_repository.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;
  StreamSubscription<Either<ApiException, dynamic>>? _chatStreamSubscription;

  ChatBloc(this._chatRepository) : super(ChatState.initial()) {
    on<FetchChats>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await _chatStreamSubscription?.cancel();
      _chatStreamSubscription = _chatRepository.getChats().listen((chats) {
        add(GetChat(chats));
      });
    });

    on<GetChat>((event, emit) async {
      event.chats.fold(
        (failure) {
          emit(state.copyWith(isLoading: false, error: failure.toString()));
        },
        (chats) {
          emit(state.copyWith(isLoading: false, chats: chats.toList()));
        },
      );
    });

    on<SelectChat>((event, emit) async {
      emit(state.copyWith(selectedChatIndex: event.index));
    });

    on<SendMessage>((event, emit) async {
      final result =
          await _chatRepository.sendMessage(event.bookingId, event.message);

      result.fold(
        (failure) {
          emit(state.copyWith(error: "Failed to send message"));
        },
        (success) {
          // Optionally handle success state
          emit(state.copyWith(error: null));
        },
      );
    });
  }
}
