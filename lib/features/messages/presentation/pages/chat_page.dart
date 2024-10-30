import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/messages/presentation/bloc/chat_bloc.dart';
import 'package:intl/intl.dart';

import '../../../auth/domain/entities/user_entity.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController _controller = ScrollController();
  final TextEditingController _messageController = TextEditingController();
  bool _needsScroll = true;

  @override
  void initState() {
    _messageController.addListener(() {
      setState(() {});
    });
    if (_needsScroll) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _controller.animateTo(
          _controller.position.maxScrollExtent,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 500),
        ),
      );
      _needsScroll = false;
    }
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            final chatDoc = state.chats[state.selectedChatIndex];
            final chatData = chatDoc.data() as Map<String, dynamic>;
            final theOtherUserId = state.userId == chatData['master_id'] as String
                ? chatData['user_id'] as String
                : chatData['master_id'] as String ;
            final userInfo = state.additionalInfo[theOtherUserId];
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ChatHeader(userInfo: userInfo),
                    const Divider(height: 0),
                    const SizedBox(height: AppSize.s10)
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                    child: ListView.separated(
                      controller: _controller,
                      itemCount: chatData["messages"].length ?? 0,
                      itemBuilder: (context, index) {
                        final messages = chatData["messages"];
                        return messages[index]["sender_id"] == state.userId
                            ? UserChatBubble(
                                message: messages[index],
                              )
                            : MasterChatBubble(
                                message: messages[index],
                              );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: AppSize.s30),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Divider(height: 0),
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p15),
                      child: Container(
                        height: AppSize.s50,
                        decoration: ShapeDecoration(
                          color: ColorManager.white,
                          shape: StadiumBorder(
                            side: BorderSide(
                              color: ColorManager.textfieldBorderColor,
                              width: 1,
                            ),
                          ),
                        ),
                        child: ClipOval(
                          child: TextField(
                            controller: _messageController,
                            onTapOutside: (_) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: 'Send message . . .',
                              fillColor: ColorManager.white,
                              suffixIcon: _messageController.text.length > 0
                                  ? IconButton(
                                      onPressed: () {
                                        context.read<ChatBloc>().add(
                                            ChatEvent.sendMessage(chatDoc.id,
                                                _messageController.text));
                                        _messageController.text = "";
                                        setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.message,
                                        color: Colors.black,
                                      ))
                                  : null,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MasterChatBubble extends StatelessWidget {
  final dynamic message;
  const MasterChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            bottom: AppSize.s21,
          ),
          child: CircleAvatar(
            maxRadius: 20,
            minRadius: 20,
            backgroundImage: AssetImage(ImageAssets.handyman),
          ),
        ),
        const SizedBox(width: AppSize.s12),
        Flexible(
          fit: FlexFit.tight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        decoration: BoxDecoration(
                          color: ColorManager.background,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(AppPadding.p8),
                        decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(AppSize.s4),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(AppPadding.p20),
                      decoration: BoxDecoration(
                        color: ColorManager.background,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppSize.s10),
                          topRight: Radius.circular(AppSize.s10),
                          bottomRight: Radius.circular(AppSize.s10),
                        ),
                      ),
                      child: Text(
                        message['content'],
                        style: getRegularStyle(
                          color: ColorManager.black,
                          fontSize: FontSizeManager.s14,
                        ),
                      ),
                    ),
                  ),
                  Flexible(flex: 1, child: SizedBox())
                ],
              ),
              SizedBox(height: AppSize.s5),
              SizedBox(
                height: AppSize.s16,
                child: Text(
                  DateFormat('dd MMMM - hh:mm').format(
                    (message['date'] as Timestamp).toDate(), // Convert Timestamp to DateTime
                  ),
                  style: getLightStyle(
                    color: ColorManager.tabBarColor,
                    fontSize: FontSizeManager.s13,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class UserChatBubble extends StatelessWidget {
  final dynamic message;
  const UserChatBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Flexible(flex: 1, fit: FlexFit.tight, child: SizedBox()),
            Flexible(
              flex: 4,
              child: Container(
                padding: const EdgeInsets.all(AppPadding.p20),
                decoration: BoxDecoration(
                  color: ColorManager.blueColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppSize.s10),
                    topRight: Radius.circular(AppSize.s10),
                    bottomLeft: Radius.circular(AppSize.s10),
                  ),
                ),
                child: Text(
                  message['content'],
                  style: getRegularStyle(
                    color: ColorManager.white,
                    fontSize: FontSizeManager.s14,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  decoration: BoxDecoration(
                    color: ColorManager.blueColor,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.s4),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: AppSize.s5),
        SizedBox(
          height: AppSize.s16,
          child: Text(
            DateFormat('dd MMMM - hh:mm').format(
              (message['date'] as Timestamp).toDate(),
            ),
            style: getLightStyle(
              color: ColorManager.tabBarColor,
              fontSize: FontSizeManager.s13,
            ),
          ),
        )
      ],
    );
  }
}

class ChatHeader extends StatelessWidget {
  final UserInfo? userInfo;
  const ChatHeader({
    super.key,
    required this.userInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: AppSize.s42,
            height: AppSize.s42,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.white,
                shape: CircleBorder(
                  side: BorderSide(
                    color: ColorManager.textfieldBorderColor,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                FontAwesomeIcons.arrowLeft,
                size: AppSize.s18,
                color: ColorManager.welcomeTextColor,
              ),
            ),
          ),
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(userInfo?.imageUrl ?? ""),
              ),
              Text(
                '${userInfo?.name} ${userInfo?.surname}',
                style: getRegularStyle(
                  color: ColorManager.welcomeTextColor,
                  fontSize: FontSizeManager.s12,
                ),
              ),
            ],
          ),
          SizedBox(
            width: AppSize.s42,
            height: AppSize.s42,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.white,
                shape: CircleBorder(
                  side: BorderSide(
                    color: ColorManager.textfieldBorderColor,
                  ),
                ),
              ),
              onPressed: () {},
              child: Icon(
                FontAwesomeIcons.ellipsisVertical,
                size: AppSize.s18,
                color: ColorManager.welcomeTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
