import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/booking/presentation/pages/booking_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_page.dart';
import 'package:gelirx/features/main/presentation/widgets/drawer_tile.dart';
import 'package:gelirx/features/main/presentation/widgets/nav_bar.dart';
import 'package:gelirx/features/notifications/presentation/pages/notifications_page.dart';
import 'package:gelirx/features/profile/presentation/pages/profile_page.dart';

@RoutePage()
class AlternateMainPage extends StatefulWidget {
  const AlternateMainPage({super.key});

  @override
  State<AlternateMainPage> createState() => _AlternateMainPageState();
}

class _AlternateMainPageState extends State<AlternateMainPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final notificationNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        page: const HomePage(),
        navKey: homeNavKey,
      ),
      NavModel(
        page: const BookingPage(),
        navKey: searchNavKey,
      ),
      NavModel(
        page: const NotificationsPage(),
        navKey: notificationNavKey,
      ),
      NavModel(
        page: const ProfilePage(),
        navKey: profileNavKey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Current Location',
              style: context.textTheme.labelSmall!.copyWith(
                fontSize: FontSizeManager.s9,
              ),
            ),
            Row(
              children: [
                Text('Business Bay, Silver Tower',
                    style: context.textTheme.labelMedium),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ],
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'BRONZE',
                style: context.textTheme.labelLarge!.copyWith(
                  color: ColorManager.bronzeTire,
                  fontSize: FontSizeManager.s10,
                ),
              ),
              Text(
                '20 Tokens',
                style: context.textTheme.labelSmall!.copyWith(
                  fontSize: FontSizeManager.s8,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: AppSize.s4),
              SvgPicture.asset(
                ImageAssets.tierIcon,
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(ColorManager.bronzeTire, BlendMode.srcIn),
              ),
              const SizedBox(width: AppSize.s4),
            ],
          ),
        ],
        leadingWidth: AppSize.s32,
        leading: IconButton(
          icon: Icon(Icons.menu,size: AppSize.s32),  // Customize the icon as needed
           onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
         },
       ),
      ),
      drawer: Drawer(
        backgroundColor: ColorManager.primary,
        shape: const ContinuousRectangleBorder(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p24.w,
          ),
          child: Column(
            children: [
              SizedBox(height: AppSize.s24.h),
              Row(
                children: [
                  Container(
                    width: AppSize.s56,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorManager.black,
                      ),
                    ),
                    child: Image.asset(
                      ImageAssets.masterIcon,
                    ),
                  ),
                  SizedBox(width: AppSize.s16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Master Name',
                        style: context.textTheme.titleLarge!.copyWith(
                          color: ColorManager.white,
                        ),
                      ),
                      const SizedBox(width: AppSize.s8),
                      Row(
                        children: [
                          SvgPicture.asset(ImageAssets.star),
                          const SizedBox(width: AppSize.s4),
                          Text(
                            '4.8',
                            style: context.textTheme.labelMedium!.copyWith(
                              color: ColorManager.white,
                            ),
                          ),
                          const SizedBox(width: AppSize.s4),
                          Text(
                            '(87)',
                            style: context.textTheme.labelSmall!.copyWith(
                              color: ColorManager.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: AppSize.s32.h),
              DrawerTile(
                isSelected: true,
                label: 'Calendar',
                icon: Image.asset(ImageAssets.calender),
              ),
              SizedBox(height: AppSize.s8.h),
              DrawerTile(
                isSelected: false,
                label: 'Payment Methodes',
                icon: Image.asset(ImageAssets.wallet),
              ),
              SizedBox(height: AppSize.s8.h),
              DrawerTile(
                isSelected: false,
                label: 'Address',
                icon: Icon(Icons.location_on_outlined, color: Color(0xffD1D3D4)),
              ),
              SizedBox(height: AppSize.s8.h),
              DrawerTile(
                isSelected: false,
                label: 'Notifications',
                icon: Image.asset(ImageAssets.notification),
              ),
              SizedBox(height: AppSize.s8.h),
              DrawerTile(
                isSelected: false,
                label: 'Offers',
                icon: Image.asset(ImageAssets.offer),
              ),
              SizedBox(height: AppSize.s8.h),
              DrawerTile(
                isSelected: false,
                label: 'Reffer a Freind',
                icon: Image.asset(ImageAssets.refer),
              ),
              SizedBox(height: AppSize.s8.h),
              DrawerTile(
                isSelected: false,
                label: 'Support',
                icon: Image.asset(ImageAssets.support),
              ),
              Expanded(child: SizedBox()),
              Divider(),
              DrawerTile(
                isSelected: false,
                label: 'Color Scheme',
                icon: Image.asset(ImageAssets.question),
              ),
              SizedBox(height: AppSize.s16.h),
              Container(
                padding: const EdgeInsets.all(AppSize.s4),
                decoration: BoxDecoration(
                  color: ColorManager.lightPrimary,
                  borderRadius: BorderRadius.circular(AppSize.s40.r),
                ),
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: AppSize.s32.h,
                        padding: const EdgeInsets.all(AppPadding.p4),
                        decoration: BoxDecoration(
                          color:
                          !true ? ColorManager.primary : ColorManager.white,
                          borderRadius: BorderRadius.circular(
                            AppSize.s40,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.light_mode_rounded,
                              color: true
                                  ? ColorManager.primary
                                  : ColorManager.white,
                            ),
                            SizedBox(width: AppSize.s12.w),
                            Text(
                              'Light',
                              style: context.textTheme.labelLarge!.copyWith(
                                fontSize: FontSizeManager.s15,
                                color: true
                                    ? ColorManager.primary
                                    : ColorManager.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        height: AppSize.s32.h,
                        padding: const EdgeInsets.all(AppPadding.p4),
                        decoration: BoxDecoration(
                          color: !false ? null : ColorManager.white,
                          borderRadius: BorderRadius.circular(
                            AppSize.s40,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dark_mode_rounded,
                              color: false
                                  ? ColorManager.primary
                                  : ColorManager.white,
                            ),
                            SizedBox(width: AppSize.s12.w),
                            Text(
                              'Dark',
                              style: context.textTheme.labelLarge!.copyWith(
                                fontSize: FontSizeManager.s15,
                                color: false
                                    ? ColorManager.primary
                                    : ColorManager.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSize.s24.h),
            ],
          ),
        ),
      ),
      body: BlocListener<AuthStatusBloc, AuthStatusState>(
        listener: (context, state) {
          state.maybeMap(
            unAuthenticated: (_) {
              print('unauthenticated');
              context.router.replace(const AuthRoute());
            },
            orElse: () {},
          );
        },
        child: Stack(
          children: [
            IndexedStack(
              index: selectedTab,
              children: items
                  .map((page) => Navigator(
                        key: page.navKey,
                        onGenerateInitialRoutes: (navigator, initialRoute) {
                          return [
                            MaterialPageRoute(builder: (context) => page.page)
                          ];
                        },
                      ))
                  .toList(),
            ),
            Column(
              children: [
                const Expanded(child: SizedBox()),
                NavBar(
                  pageIndex: selectedTab,
                  onTap: (index) {
                    if (index == selectedTab) {
                      items[index]
                          .navKey
                          .currentState
                          ?.popUntil((route) => route.isFirst);
                    } else {
                      setState(() {
                        selectedTab = index;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        child: FloatingActionButton(
          backgroundColor: ColorManager.primary,
          elevation: 0,
          onPressed: () => debugPrint("Add Button pressed"),
          shape: CircleBorder(),
          child: Icon(
            Icons.add_rounded,
            size: AppSize.s36,
            color: ColorManager.white,
          ),
        ),
      ),
    );
  }
}
