part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    required dynamic chats,
    required Map<String, UserInfo> additionalInfo,
    String? error,
    required int selectedChatIndex,
    String? userId,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        isLoading: false,
        error: null,
        chats: [],
        selectedChatIndex: 0,
        userId: null,
        additionalInfo: {},
      );
}
