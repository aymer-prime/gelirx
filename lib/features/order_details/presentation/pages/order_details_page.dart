import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.close_rounded,
                      size: AppSize.s22,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p16.w),
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
            SizedBox(height: AppSize.s40.h),
            Container(
              decoration: BoxDecoration(
                  color: ColorManager.joyColor, shape: BoxShape.circle),
              child: Image.asset(
                ImageAssets.timer,
                height: AppSize.s150.h,
              ),
            ),
            SizedBox(height: AppSize.s40.h),
            Column(
              children: [
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppSize.s16),
                    child: SizedBox(
                        height: 20, child: AnimatedSteps(activeStep: 0))),
                SizedBox(height: AppSize.s16.h),

              ],
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                 color: ColorManager.blueColor,
                 borderRadius: BorderRadius.circular(20)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Address:',
                       style: context.textTheme.titleSmall,
                     ),
                     Text(
                       'Business Bay, Silver Tower 9 floor 904, Dubai',
                       style: context.textTheme.titleSmall,
                     ),
                     Divider(),
                     Row(
                       children: [
                         CircleAvatar(
                           maxRadius: AppSize.s25,
                           minRadius: AppSize.s25,
                           backgroundImage: AssetImage(ImageAssets.handyman),
                         ),
                         SizedBox(
                           width: AppSize.s10,
                         ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Osman Yancigil",
                                 style: getTextStyle(
                                     AppSize.s20, FontWeight.w400, Colors.white)),
                             Row(
                               children: [
                                 SvgPicture.asset(ImageAssets.location,height: AppSize.s15,),
                                 Text(" 35 km ",
                                     style: getTextStyle(
                                         AppSize.s14,
                                         FontWeight.w400,
                                         ColorManager.white)),
                                 Text("(Approx. 40 min)",
                                     style: getTextStyle(
                                         AppSize.s14,
                                         FontWeight.w400,
                                         ColorManager.lightGreyText)),
                               ],
                             ),
                           ],
                         )
                       ],
                     ),

                   ],
                 ),
               ),
             ),
           ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppPadding.p20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address:',
                    style: context.textTheme.titleSmall,
                  ),
                  Text(
                    'Business Bay, Silver Tower 9 floor 904, Silver Tower - marasi Dr - Business Bay - Dubai, Dubai',
                    style: context.textTheme.labelLarge,
                  ),
                  SizedBox(height: AppSize.s16.h),
                  Text(
                    'Problem Description:',
                    style: context.textTheme.titleSmall,
                  ),
                  Text(
                    'Lorem ipsum odor amet, consectetuer adipiscing elit. Per maximus odio felis lacinia magna, fermentum placerat. In leo mollis posuere consectetur donec nostra.',
                    style: context.textTheme.labelLarge,
                  )
                ],
              ),
            ),
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(top: 1.0),
          child: Row(
            children: [
              ...List.generate(stepCount, (index) {
                return Container(
                  height: 4,
                  width: stepWidth,
                  decoration: BoxDecoration(
                    color:  index > activeStep + 1 ? Colors.grey : ColorManager.joyColor,
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
              left: (2 * width / 5) + ((2) * 2),
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
                  animation:
                      Listenable.merge([widthAnimation, heightAnimation]),
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
      ]),
    );
  }
}
