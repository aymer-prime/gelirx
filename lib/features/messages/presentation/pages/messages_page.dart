import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/List.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s24),
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

              if (state.chatStream != null) {
                return StreamBuilder<QuerySnapshot>(
                  stream: state.chatStream, // The stream from the BLoC state
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return const Center(child: Text('No chats available.'));
                    }

                    final chatDocs = snapshot.data!.docs;

                    return Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 30,
                          ),
                          child: Column(
                            children: List.generate(
                              chatDocs.length,
                                  (index) {
                                final chatData = chatDocs[index].data() as Map<String, dynamic>;

                                return Container(
                                  height: 70,
                                  color: Colors.transparent,
                                  child: GestureDetector(
                                    onTap: () {
                                      // Add your chat route navigation
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
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    chatData['name'] ?? 'Unknown',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Text(
                                                    chatData['time'] ?? '',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 13,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                chatData['services'] ?? 'No services',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              Text(
                                                chatData['message'] ?? 'No message',
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
                            ).separateWith(const SizedBox(height: 20)),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }

              return const Center(child: Text('No chat stream available.'));
            },
          ),
        ],
      ),
    );
  }
}
