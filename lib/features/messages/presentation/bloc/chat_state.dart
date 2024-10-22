part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    required dynamic chats,
    String? error,
    required int selectedChatIndex,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        isLoading: false,
        error: null,
        chats: [],
        selectedChatIndex: 0,
      );
}
