part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.fetchChats() = FetchChats;

  const factory ChatEvent.getChat(Either<ApiException, dynamic> chats) = GetChat;
}
