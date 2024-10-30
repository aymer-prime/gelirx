import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:injectable/injectable.dart';

import '../../../../app/local_services/local_services.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../domain/i_chat_repository.dart';

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;
  final LocalService _localService;
  StreamSubscription<Either<ApiException, dynamic>>? _chatStreamSubscription;

  ChatBloc(this._chatRepository, this._localService) : super(ChatState.initial()) {
    _initializeUserId();
    on<FetchChats>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await _chatStreamSubscription?.cancel();
      _chatStreamSubscription = _chatRepository.getChats().listen((chats) {

        add(GetChat(chats));
      });
    });

    on<GetChat>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      await event.chats.fold(
        (failure) async{
          emit(state.copyWith(isLoading: false, error: failure.toString()));
        },
        (chats) async {
          final additionalInfoMap = await _fetchAdditionalInfoForChats(chats);
          emit(state.copyWith(isLoading: false,
              chats: chats.toList(),
            additionalInfo: additionalInfoMap
          ));
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

  Future<void> _initializeUserId() async {
    final userId = _localService.get(Constants.userIdKey);
    emit(state.copyWith(userId: userId));
  }

  Future<Map<String, UserInfo>> _fetchAdditionalInfoForChats(dynamic chats) async {
    final additionalInfoMap = <String, UserInfo>{};
    for (var chat in chats) {
      final theOtherUserId = state.userId == chat['master_id'] as String
          ? chat['user_id'] as String
          : chat['master_id'] as String ;
      final userInfoResult = await _chatRepository.fetchAdditionalInfo(theOtherUserId);
      userInfoResult.fold(
            (failure) => print("Error fetching additional info: $failure"),
            (userInfo) => additionalInfoMap[theOtherUserId] = userInfo,
      );
    }
    return additionalInfoMap;
  }
}
