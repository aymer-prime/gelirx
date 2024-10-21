part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    String? error,
    Stream<QuerySnapshot>? chatStream, // Hold the stream of chat snapshots
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
    isLoading: false,
    error: null,
    chatStream: null,
  );
}