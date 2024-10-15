import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/booking/presentation/pages/booking_page.dart';
import 'package:gelirx/features/home/presentation/pages/old/home_page.dart';
import 'package:gelirx/features/notifications/presentation/pages/notifications_page.dart';
import 'package:gelirx/features/profile/presentation/pages/profile_page.dart';

@RoutePage()
class MainPage extends HookWidget {
  const MainPage({super.key});

  final List<Widget> pages = const [
    HomePage(),
    BookingPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final currentPage = useValueNotifier<int>(0);
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, child) {
            return pages[value];
          },
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, child) {
            return Container(
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: ColorManager.lightPrimary,
                    blurRadius: AppSize.s2,
                  ),
                ],
              ),
              child: BottomNavigationBar(
                onTap: (value) {
                  currentPage.value = value;
                },
                currentIndex: currentPage.value,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(ImageAssets.navbarHome),
                    label: AppStrings.home,
                    activeIcon: SvgPicture.asset(
                      ImageAssets.navbarHome,
                      color: ColorManager.darkPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(ImageAssets.navbarBooking),
                    label: AppStrings.booking,
                    activeIcon: SvgPicture.asset(
                      ImageAssets.navbarBooking,
                      color: ColorManager.darkPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(ImageAssets.navbarNotification),
                    label: AppStrings.notification,
                    activeIcon: SvgPicture.asset(
                      ImageAssets.navbarNotification,
                      color: ColorManager.darkPrimary,
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset(ImageAssets.navbarProfile),
                    label: AppStrings.profile,
                    activeIcon: SvgPicture.asset(
                      ImageAssets.navbarProfile,
                      color: ColorManager.darkPrimary,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
