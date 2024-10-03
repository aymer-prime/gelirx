import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/app_constants.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class OnboardingPage extends HookWidget {
  OnboardingPage({super.key});

  final List<OnboardingData> obData = [
    OnboardingData(
      image: ImageAssets.onboardingImage1,
      title: AppStrings.onboardingTitle1,
      subtitle: AppStrings.onboardingSubtitle1,
    ),
    OnboardingData(
      image: ImageAssets.onboardingImage2,
      title: AppStrings.onboardingTitle2,
      subtitle: AppStrings.onboardingSubtitle2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final currentPage = useValueNotifier<int>(0);
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Stack(
        children: [
          Positioned(
            top: -AppSize.s40.w,
            left: -AppSize.s40.w,
            width: AppSize.s80.w,
            height: AppSize.s80.w,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.onBoardingContainerColor1),
            ),
          ),
          Positioned(
            top: AppSize.s150.w,
            left: AppSize.s280.w,
            width: AppSize.s16.w,
            height: AppSize.s16.w,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.onBoardingContainerColor2,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  child: SizedBox(
                    height: AppSize.s32,
                    child: ElevatedButton(
                      onPressed: () {
                        getIt<SharedPreferences>()
                            .setBool(Constants.showOnboarding, false);
                        context.router.replace(const AlternateMainRoute());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.textfieldNumFillColor,
                        shape: const StadiumBorder(),
                        elevation: 0.0,
                      ),
                      child: Text(
                        'skip',
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: ColorManager.textTitleColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: PageView.builder(
                      controller: controller,
                      itemCount: obData.length,
                      onPageChanged: (val) {
                        currentPage.value = val;
                      },
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              obData[index].image,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                            const SizedBox(height: AppSize.s40),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p16,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    obData[index].title,
                                    textAlign: TextAlign.center,
                                    style: context.textTheme.displayMedium,
                                  ),
                                  const SizedBox(height: AppSize.s16),
                                  Text(
                                    obData[index].subtitle,
                                    textAlign: TextAlign.center,
                                    style: context.textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: currentPage,
                  builder: (context, value, child) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            obData.length,
                            (index) => Padding(
                              padding:
                                  const EdgeInsets.only(right: AppPadding.p8),
                              child: OnboardingPageIndicator(
                                isSelected: index == value,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s24),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.p16,
                          ),
                          child: value == obData.length - 1
                              ? SizedBox(
                                  width: double.infinity,
                                  height: AppSize.s60,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      getIt<SharedPreferences>().setBool(
                                          Constants.showOnboarding, false);
                                      context.router
                                          .replace(const AlternateMainRoute());
                                    },
                                    child: const Text(
                                      AppStrings.getStarted,
                                    ),
                                  ),
                                )
                              : SizedBox(
                                  height: AppSize.s60,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.easeIn,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                    ),
                                    child: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: AppSize.s40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPageIndicator extends StatelessWidget {
  final bool isSelected;
  const OnboardingPageIndicator({
    super.key,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: AppSize.s8,
      width: isSelected ? AppSize.s40 : AppSize.s8,
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
          color: isSelected
              ? ColorManager.primary
              : ColorManager.disabledButtonColor,
          borderRadius: BorderRadius.circular(AppSize.s12)),
    );
  }
}

class OnboardingData {
  final String image;
  final String title;
  final String subtitle;

  OnboardingData({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
