import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:intl/intl.dart';
import '../bloc/chat_bloc.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: AppPadding.p24),
              child: Text(
                'Messages',
                style: getRegularStyle(
                  color: ColorManager.black,
                  fontSize: FontSizeManager.s30,
                ),
              ),
            ),
            BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return  Expanded(child: Center(child: CircularProgressIndicator()));
                }
                if (state.error != null) {
                  return Center(child: Text('Error: ${state.error}'));
                }
                if (state.chats.isEmpty) {
                  return Expanded(child: const Center(child: Text("You don't have chat yet.",style:
                  TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),)));
                }
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.chats.length ?? 0,
                    padding:  EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 30,
                      bottom: 100,
                    ),
                    itemBuilder: (_, index) {
                      final chatDoc = state.chats[index];
                      final chatData = chatDoc.data() as Map<String, dynamic>;
                      final theOtherUserId = state.userId == chatData['master_id'] as String
                      ? chatData['user_id'] as String
                          : chatData['master_id'] as String ;
                      final userInfo = state.additionalInfo[theOtherUserId];
                      final lastMessage = chatData['messages']?.isNotEmpty == true
                          ? chatData['messages'].last
                          : null;
                      final lastMessageContent = lastMessage  != null
                      ? lastMessage["content"]
                          : "";
                      chatData['messages']?.isNotEmpty == true
                          ? chatData['messages'].last
                          : null;
                      String formattedTime = lastMessage != null
                          ?    DateFormat('dd MMMM - hh:mm').format(
                        (lastMessage['date'] as Timestamp).toDate(),
                         )
                          : '';
                      return GestureDetector(
                        onTap: () {
                          context
                              .read<ChatBloc>()
                              .add(ChatEvent.selectChat(index));
                          context.router.push(const ChatRoute());
                        },
                        child: Container(
                          height: 70,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    userInfo?.imageUrl ?? "",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                         "${userInfo?.name ?? "unkown"} ${userInfo?.surname ?? "name"}",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          formattedTime,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      userInfo?.services != null
                                          ? userInfo!.services
                                          .map((service) => service.name ?? '')
                                          .join(', ')
                                          : '',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      lastMessageContent,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: AppSize.s20),
                  ),
                );
                //return const Center(child: Text('No chat stream available.'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
