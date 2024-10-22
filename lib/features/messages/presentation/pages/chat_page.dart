import 'package:auto_route/auto_route.dart';
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

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController _controller = ScrollController();
  bool _needsScroll = true;

  @override
  void initState() {
    if (_needsScroll) {
      WidgetsBinding.instance.addPostFrameCallback(
            (_) =>
            _controller.animateTo(
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    ChatHeader(),
                    const Divider(height: 0),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.p24),
                    child: ListView.builder(
                      itemCount: state.chats[3]["messages"].length ?? 0,
                      itemBuilder: (context, index) {
                     final chatDoc = state.chats[index]; // Now this should work
                     final chatData = chatDoc.data() as Map<String, dynamic>;
                        return state.chats[3]["sender_id"] == "39"
                            ? UserChatBubble()
                            :  MasterChatBubble();
                      },
                      controller: _controller,
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
                            onTapOutside: (_) =>
                                FocusManager.instance.primaryFocus?.unfocus(),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              hintText: 'Send message . . .',
                              fillColor: ColorManager.white,
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
  const MasterChatBubble({
    super.key,
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
                children: [
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
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
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
                  DateFormat('dd MMMM - hh:mm').format(DateTime.now()),
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
  const UserChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Flexible(flex: 1, fit: FlexFit.tight, child: SizedBox()),
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
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: getRegularStyle(
                    color: ColorManager.white,
                    fontSize: FontSizeManager.s14,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSize.s5),
        SizedBox(
          height: AppSize.s16,
          child: Text(
            DateFormat('dd MMMM - hh:mm').format(DateTime.now()),
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
  const ChatHeader({
    super.key,
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
              const CircleAvatar(
                backgroundImage: AssetImage(ImageAssets.handyman),
              ),
              Text(
                'Osman Yılmaz',
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
