import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/app/view/app.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_pageview_pages/otp_page.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

import '../../../master/presentation/widget/master_card.dart';
import '../../../master/presentation/widget/review_star_row.dart';

@RoutePage()
class BookingDetailsPage extends StatelessWidget {
  final String masterId;
  const BookingDetailsPage({
    super.key,
    required this.masterId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              previous.isLoading != current.isLoading,
          listener: (context, state) {
            if (state.isLoading) {
              LoadingScreen.instance().showLoadingScreen(
                context: context,
                text: 'Loading . . .',
              );
            } else {
              LoadingScreen.instance().hide();
            }
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSize.s16),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: AppSize.s30,
                            width: AppSize.s30,

                            child: const Icon(FontAwesomeIcons.arrowLeft,
                                size: AppSize.s18),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s16,
                    ),
                    Text(
                      "Call a professional",
                      style: getTextStyle(
                          AppSize.s24, FontWeight.w500, ColorManager.black),
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    MasterCard(),
                    const SizedBox(height: AppSize.s32),
                    Text(
                      'Please fill in the required information',
                      style: getTextStyle(FontSizeManager.s24, FontWeight.w500,
                          ColorManager.joyColor),
                    ),
                    Text('* Which service do you request?',
                        style: getTextStyle(FontSizeManager.s14, FontWeight.w500,
                            ColorManager.textSubtitleColor)),
                    buildRadioOption("Radiator Cleaning", true),
                    buildRadioOption("House Cleaning", false),
                    buildRadioOption("House to House Transportation", false),
                    const SizedBox(height: AppSize.s20),
                    Divider(color: ColorManager.welcomeTextColor),
                    const SizedBox(height: AppSize.s20),
                    Text('* Explain the problem in detail',
                        style: getTextStyle(FontSizeManager.s14, FontWeight.w500,
                            ColorManager.textSubtitleColor)),
                    const SizedBox(height: AppSize.s10),
                    TextField(
                      maxLength: 750,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                      maxLines: null,
                      minLines: 4,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s8),
                          borderSide: BorderSide(color: const Color(0xffe0e2ea)),
                        ),
                        fillColor: const Color(0xfff5f7fa),
                        counterText: '',
                        hintStyle: getLightStyle(
                          color: ColorManager.lightGreyText,
                          fontSize: FontSizeManager.s12,
                        ),
                        hintText:
                            'Please explain the work to be done in full detail. Requests that are not explained properly or not given with all the details may be rejected by the masters.',
                      ),
                    ),
                    const SizedBox(height: AppSize.s10),
                    Divider(color: ColorManager.welcomeTextColor),
                    Text('Upload photos of the problem',
                        style: getTextStyle(FontSizeManager.s14, FontWeight.w500,
                            ColorManager.textSubtitleColor)),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '(Upload photos if necessery)',
                            style: getRegularStyle(
                              color: ColorManager.lightGreyText,
                              fontSize: FontSizeManager.s12_8,
                            ),
                          ),
                          TextSpan(
                            text: '(* if necessary)',
                            style: getRegularStyle(
                              color: ColorManager.white,
                              fontSize: FontSizeManager.s11,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: AppSize.s10),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5,
                        (index) => Flexible(
                          child: Container(
                            height: AppSize.s62,
                            width: AppSize.s68,
                            decoration: BoxDecoration(
                              color:  Colors.white,
                              borderRadius: BorderRadius.circular(AppSize.s5),
                              border:
                                  Border.all(color: ColorManager.lightGreyText),
                            ),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.camera_alt_outlined,
                                    color: ColorManager.textSubtitleColor,
                                    size: AppSize.s11,
                                  ),
                                  Text(
                                    'Select image',
                                    overflow: TextOverflow.ellipsis,
                                    style: getRegularStyle(
                                      color: ColorManager.textSubtitleColor,
                                      fontSize: FontSizeManager.s9,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ).separateWith(const SizedBox(
                        width: AppSize.s10,
                      )),
                    ),
                    const SizedBox(height: AppSize.s100),

                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(width: 1.0, color: Color(0xffe0e2ea)),
                  ),
                  ),
                  padding: EdgeInsets.all(AppSize.s15),
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<HomeBloc>()
                          .add(HomeEvent.callMaster(masterId, () {
                        context.router.push(const OrderDetailsRoute());
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorManager.joyColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Call Now',
                            style: getTextStyle(
                                AppSize.s16, FontWeight.w600, Colors.white)),
                        Text(' (40 min)',
                            style: getTextStyle(
                                AppSize.s16, FontWeight.w300, Colors.white.withOpacity(0.7))),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRadioOption(String value, bool selected) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          selected
              ? Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorManager.joyColor,
                      width: 6,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorManager.white, // Active radio button color
                      ),
                    ),
                  ))
              : Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorManager.grey,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorManager.white, // Active radio button color
                      ),
                    ),
                  )),
          SizedBox(width: 10),
          Text(
            value,
            style: getTextStyle(FontSizeManager.s14, FontWeight.w400,
                ColorManager.welcomeTextColor),
          ),
        ],
      ),
    );
  }
}
