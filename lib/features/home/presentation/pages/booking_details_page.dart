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
          child: Padding(
            padding: const EdgeInsets.all(AppSize.s16),
            child: Stack(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: AppSize.s55,
                            width: AppSize.s55,
                            decoration: BoxDecoration(
                              color: ColorManager.background,
                              borderRadius: BorderRadius.circular(AppSize.s15),
                            ),
                            child: const Icon(FontAwesomeIcons.caretLeft,
                                size: AppSize.s18),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.s16,
                    ),
                    LayoutBuilder(builder: (context, constraints) {
                      if (constraints.maxWidth > 375) {
                        return Column(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(ImageAssets.handyman),
                              maxRadius: AppSize.s90,
                              minRadius: AppSize.s90,
                            ),
                            const SizedBox(height: AppSize.s16),
                            Center(
                                child: Text(
                              "Osman Yancigil",
                              style: getTextStyle(
                                  AppSize.s20, FontWeight.w600, Colors.black),
                            )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("4.7",
                                    style: getTextStyle(
                                        AppSize.s16,
                                        FontWeight.w500,
                                        ColorManager.welcomeTextColor)),
                                const SizedBox(width: AppSize.s5),
                                const Stars(starSize: AppSize.s14),
                                const SizedBox(width: AppSize.s8),
                                Text("(17)",
                                    style: getTextStyle(
                                        AppSize.s16,
                                        FontWeight.w300,
                                        ColorManager.tabBarColor)),
                              ],
                            ),
                            Text(
                                "Radiator Cleaning, House Cleaning, House to House Transportation",
                                textAlign: TextAlign.center,
                                style: getTextStyle(
                                    AppSize.s14,
                                    FontWeight.w400,
                                    ColorManager.textSubtitleColor)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  ImageAssets.location,
                                  height: AppSize.s15,
                                  color: ColorManager.welcomeTextColor,
                                ),
                                Text(" 35 km ",
                                    style: getTextStyle(
                                        AppSize.s14,
                                        FontWeight.w400,
                                        ColorManager.welcomeTextColor)),
                                Text("(Approx. 40 min)",
                                    style: getTextStyle(
                                        AppSize.s14,
                                        FontWeight.w400,
                                        ColorManager.lightGreyText)),
                              ],
                            ),
                          ],
                        );
                      } else {
                        return Row(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(ImageAssets.handyman),
                              maxRadius: AppSize.s68,
                              minRadius: AppSize.s68,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Osman Yancigil",
                                    style: getTextStyle(AppSize.s20,
                                        FontWeight.w600, Colors.black),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("4.7",
                                          style: getTextStyle(
                                              AppSize.s16,
                                              FontWeight.w500,
                                              ColorManager.welcomeTextColor)),
                                      const SizedBox(width: AppSize.s5),
                                      const Stars(starSize: AppSize.s14),
                                      const SizedBox(width: AppSize.s8),
                                      Text("(17)",
                                          style: getTextStyle(
                                              AppSize.s16,
                                              FontWeight.w300,
                                              ColorManager.tabBarColor)),
                                    ],
                                  ),
                                  Text(
                                      "Radiator Cleaning, House Cleaning, House to House Transportation",
                                      textAlign: TextAlign.start,
                                      style: getTextStyle(
                                          AppSize.s14,
                                          FontWeight.w400,
                                          ColorManager.textSubtitleColor)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        ImageAssets.location,
                                        height: AppSize.s15,
                                        color: ColorManager.welcomeTextColor,
                                      ),
                                      Text(" 35 km ",
                                          style: getTextStyle(
                                              AppSize.s14,
                                              FontWeight.w400,
                                              ColorManager.welcomeTextColor)),
                                      Text("(Approx. 40 min)",
                                          style: getTextStyle(
                                              AppSize.s14,
                                              FontWeight.w400,
                                              ColorManager.lightGreyText)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }
                    }),
                    const SizedBox(height: AppSize.s32),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    //width: double.infinity,
                    height: AppSize.s375,
                    decoration: BoxDecoration(
                      color: ColorManager.blueColor,
                      borderRadius: BorderRadius.circular(AppSize.s20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSize.s16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Please fill in the required information',
                            style: getMediumStyle(
                              color: ColorManager.white,
                              fontSize: FontSizeManager.s18,
                            ),
                          ),
                          const SizedBox(height: AppSize.s10),
                          Text(
                            'Explain the problem in detail',
                            style: getRegularStyle(
                              color: const Color(0xffb1babf),
                              fontSize: FontSizeManager.s12_8,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(AppSize.s10),
                            child: TextField(
                              maxLength: 750,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              maxLines: null,
                              minLines: 4,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s8),
                                  borderSide: BorderSide.none,
                                ),
                                fillColor: const Color(0xff3c455b),
                                counterText: '',
                                hintStyle: getLightStyle(
                                  color: ColorManager.lightGreyText,
                                  fontSize: FontSizeManager.s12,
                                ),
                                hintText:
                                    'Please explain the work to be done in full detail. Requests that are not explained properly or not given with all the details may be rejected by the masters.',
                              ),
                            ),
                          ),
                          const SizedBox(height: AppSize.s10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Upload photos of the problem ',
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
                          const SizedBox(height: AppSize.s4),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              5,
                              (index) => Flexible(
                                child: Container(
                                  //height: AppSize.s58,
                                  //width: AppSize.s62,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff181F30),
                                    borderRadius:
                                        BorderRadius.circular(AppSize.s5),
                                    border: Border.all(
                                        color: ColorManager.textSubtitleColor),
                                  ),
                                  child: AspectRatio(
                                    aspectRatio: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          color: ColorManager.white,
                                          size: AppSize.s11,
                                        ),
                                        Text(
                                          'Select image',
                                          overflow: TextOverflow.ellipsis,
                                          style: getRegularStyle(
                                            color: ColorManager.white,
                                            fontSize: FontSizeManager.s9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ).separateWith(const SizedBox(
                              width: 2,
                            )),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: double.infinity,
                            height: AppSize.s48,
                            child: ElevatedButton(
                              onPressed: () {
                                context
                                    .read<HomeBloc>()
                                    .add(HomeEvent.callMaster(masterId, () {
                                      context.router
                                          .push(const OrderDetailsRoute());
                                    }));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorManager.joyColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Call Now',
                                      style: getTextStyle(AppSize.s16,
                                          FontWeight.w600, Colors.white)),
                                  Text(' (40 min)',
                                      style: getTextStyle(AppSize.s16,
                                          FontWeight.w300, Colors.white)),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
