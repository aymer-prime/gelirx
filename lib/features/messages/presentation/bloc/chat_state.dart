part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    required dynamic chats,
    String? error,
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
    isLoading: false,
    error: null,
    chats: []
  );
}