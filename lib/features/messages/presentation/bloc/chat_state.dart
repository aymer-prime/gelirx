part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required bool isLoading,
    String? error,
    required Stream<QuerySnapshot<Object?>> chatStream,  // Use correct type here
  }) = _ChatState;

  factory ChatState.initial() => ChatState(
    isLoading: false,
    error: null,
    chatStream: Stream.empty(),  // Provide an empty stream initially
  );
}