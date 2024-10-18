import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/app/view/app.dart';

@RoutePage()
class OrderDetailsPage extends HookWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1), // Duration for each pulse
    )..repeat(reverse: true); // Repeats the animation in reverse (pulse effect)

    // Define width and height tweens
    final widthAnimation = useMemoized(
      () => Tween<double>(begin: 90, end: 100).animate(animationController),
      [animationController],
    );
    final heightAnimation = useMemoized(
      () => Tween<double>(begin: 3, end: 20).animate(animationController),
      [animationController],
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p24.w),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1, color: ColorManager.joyColor),
                      ),
                    ),
                    child: Text('Cancel',
                        style: getTextStyle(AppSize.s14, FontWeight.w400,
                            ColorManager.textSubtitleColor)),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppSize.s4.h),
            Container(
              decoration: BoxDecoration(
                  color: ColorManager.joyColor, shape: BoxShape.circle),
              child: Image.asset(
                ImageAssets.timer,
                height: AppSize.s150.h,
              ),
            ),
            SizedBox(height: AppSize.s25.h),
            Column(
              children: [
                Text('Processing the request, please wait',
                    style: getTextStyle(AppSize.s18, FontWeight.w500,
                        ColorManager.welcomeTextColor).copyWith(
                      height: 1.25
                    )),
                SizedBox(height: AppSize.s5.h),
                Text('This process takes at most 1 minute.',
                    style: getTextStyle(AppSize.s14, FontWeight.w300,
                        ColorManager.lightGreyText).copyWith(
                        height: 1.25
                    )),
                SizedBox(height: AppSize.s30.h),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSize.s16),
                    child: SizedBox(
                        height: AppSize.s30, child: AnimatedSteps(activeStep: 0))),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.s24),
                  child: Row(children: [
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfff0f2f8),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s10)),
                            minimumSize: const Size(AppSize.s170, AppSize.s45),
                          ),
                          onPressed: () {
                            context.router.push(BookingHistoryRoute());
                          },
                          child: Text(
                            "My Demands",
                            style: getTextStyle(
                                AppSize.s14, FontWeight.w500, Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSize.s15),
                    Flexible(
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xfff0f2f8),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSize.s10)),
                            minimumSize: const Size(AppSize.s170, AppSize.s45),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Cancel Transaction",
                            style: getTextStyle(
                                AppSize.s14, FontWeight.w500, Colors.black),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
            SizedBox(height: AppSize.s20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorManager.blueColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'If someone other than the above mentioned person provides transportation, please cancel the transaction and notify us.',
                        textAlign: TextAlign.center,
                        style: getLightStyle(
                          color: const Color(0xffffca00),
                          fontSize: FontSizeManager.s15,
                        ),
                      ),
                      SizedBox(height: AppSize.s15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: AppSize.s90,
                            height: AppSize.s90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(ImageAssets.handyman),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSize.s10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Osman Yancigil",
                                style: getRegularStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSizeManager.s16,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    ImageAssets.location,
                                    height: AppSize.s15,
                                  ),
                                  Text(
                                    "35 km ",
                                    style: getTextStyle(AppSize.s14,
                                        FontWeight.w400, ColorManager.white),
                                  ),
                                  Text("(Approx. 40 min)",
                                      style: getTextStyle(
                                        AppSize.s14,
                                        FontWeight.w400,
                                        ColorManager.tabBarColor,
                                      )),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xff364363),
                      ),
                      Text(
                        'Request Date',
                          style: getTextStyle(AppSize.s14, FontWeight.w400,ColorManager.tabBarColor,)
                      ),
                      Text(
                        'October 16, 2024 - 17:40',
                          style: getTextStyle(AppSize.s14, FontWeight.w400, ColorManager.white)
                      ),
                      Divider(
                        color: Color(0xff364363),
                      ),
                      Text(
                        'Approximate Arrival Time',
                          style: getTextStyle(AppSize.s14, FontWeight.w400,ColorManager.tabBarColor,)
                      ),
                      Text(
                        'October 16, 2024 - 18:40',
                          style: getTextStyle(AppSize.s14, FontWeight.w400, ColorManager.white)
                      ),
                      Divider(
                        color: Color(0xff364363),
                      ),
                      Text(
                        'Your address:',
                          style: getTextStyle(AppSize.s14, FontWeight.w400,ColorManager.tabBarColor,)
                      ),
                      Text(
                        'Business Bay, Silver Tower 9 floor 904, Dubai',
                        style: getTextStyle(AppSize.s14, FontWeight.w400, ColorManager.white)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: AppSize.s30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Request Details',
                    style: getTextStyle(
                        FontSizeManager.s24, FontWeight.w500, Colors.black).copyWith(
                      height: 1.1
                    ),
                  ),
                  SizedBox(height: AppSize.s15,),
                  Text(
                    'Lorem ipsum odor amet, consectetuer adipiscing elit. Per maximus odio felis lacinia magna, fermentum placerat. In leo mollis posuere consectetur donec nostra.',
                    style: getTextStyle(AppSize.s14, FontWeight.w300, ColorManager.welcomeTextColor).copyWith(
                        height: 1.25
                    ),
                  ),
                  const SizedBox(height: AppSize.s20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
                      (index) => Flexible(

                        child: AspectRatio(
                          aspectRatio: 0.858,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppSize.s10,
                            ),
                            child: Image.asset(
                              ImageAssets.tesisat,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ).separateWith(SizedBox(width: AppSize.s10,)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.s30,
            )
          ],
        ),
      ),
    );
  }
}

class AnimatedSteps extends HookWidget {
  final int activeStep;

  AnimatedSteps({required this.activeStep});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    final stepWidth = width / 5;
    final widthAnimation = useMemoized(
      () => Tween<double>(begin: stepWidth + 3, end: stepWidth + 10)
          .animate(animationController),
      [animationController],
    );

    final heightAnimation = useMemoized(
      () => Tween<double>(begin: 5, end: 7).animate(animationController),
      [animationController],
    );

    const stepCount = 4;

    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(stepCount, (index) {
              return Container(
                height: 4,
                width: stepWidth,
                decoration: BoxDecoration(
                  color: index > activeStep + 1
                      ? Colors.grey
                      : ColorManager.joyColor,
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            }).separateWith(SizedBox(
              width: 2,
            )),
          ],
        ),
      ),
      Positioned(
        left: -2.0,
        top: -0.7,
        child: Padding(
          padding: EdgeInsets.only(
            left: (2 * width / 5) + width / 16,
          ),
          child: AnimatedBuilder(
            animation: Listenable.merge([widthAnimation, heightAnimation]),
            builder: (context, child) {
              return Container(
                width: widthAnimation.value,
                height: heightAnimation.value,
                decoration: BoxDecoration(
                  color: ColorManager.joyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        ),
      ),
      Row(
        children: [
          ...List.generate(4, (index) {
            if (9 == index) {
              return AnimatedBuilder(
                animation: Listenable.merge([widthAnimation, heightAnimation]),
                builder: (context, child) {
                  return Container(
                    width: widthAnimation.value,
                    height: heightAnimation.value,
                    decoration: BoxDecoration(
                      color: ColorManager.joyColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  );
                },
              );
            } else {
              return Container(
                height: 4,
                //width: stepWidth,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            }
          }).separateWith(SizedBox(
            width: 2,
          )),
        ],
      ),
    ]);
  }
}
