import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

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
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.error != null) {
                  return Center(child: Text('Error: ${state.error}'));
                }
                return Expanded(
                  child: ListView.separated(
                    itemCount: state.chats.length ?? 0,
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 30,
                      bottom: 100,
                    ),
                    itemBuilder: (_, index) {
                      final chatDoc = state.chats[index];
                      final chatData = chatDoc.data() as Map<String, dynamic>;
                      return Container(
                        height: 70,
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            context
                                .read<ChatBloc>()
                                .add(ChatEvent.selectChat(index));
                            context.router.push(const ChatRoute());
                          },
                          child: Row(
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.asset(
                                    ImageAssets.handyman,
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
                                          chatData['name'] ?? 'Osman Yilmaz',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          chatData['time'] ?? '15:08',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w300,
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      chatData['services'] ??
                                          'Radiator Cleaning, House Cleaning, House to House Transportation',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 13,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      (((chatData['messages']?.isEmpty ??
                                                      true) ||
                                                  chatData['messages'] == null)
                                              ? 'No messages'
                                              : chatData['messages']
                                                  .first['content']) ??
                                          'No messages',
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
