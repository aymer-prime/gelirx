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
import 'package:gelirx/features/favorite/presentation/pages/favorite_page.dart';
import 'package:gelirx/features/home/presentation/pages/home_expandable_page.dart';
import 'package:gelirx/features/main/presentation/widgets/drawer_tile.dart';
import 'package:gelirx/features/main/presentation/widgets/new_navbar.dart';
import 'package:gelirx/features/messages/presentation/pages/messages_page.dart';
import 'package:gelirx/features/profile/presentation/pages/profile_page.dart';

@RoutePage()
class AlternateMainPage extends StatefulWidget {
  const AlternateMainPage({super.key});

  @override
  State<AlternateMainPage> createState() => _AlternateMainPageState();
}

class _AlternateMainPageState extends State<AlternateMainPage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final addnNavKey = GlobalKey<NavigatorState>();
  //final notificationNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];
  late AnimationController navBarAnimationController;
  late Animation<double> navBarTransitionAnimation;

  @override
  void initState() {
    super.initState();
    navBarAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    navBarTransitionAnimation = Tween<double>(
      begin: 0.0,
      end: -100.0,
    ).animate(
      navBarAnimationController,
    );
    items = [
      NavModel(
        page: HomeExpandablePage(
          hideBottomNavBar: () {
            navBarAnimationController.forward();
          },
          showBottomNavBar: () {
            navBarAnimationController.reverse();
          },
        ),
        navKey: homeNavKey,
      ),
      // NavModel(
      //   page: const BookingPage(),
      //   navKey: searchNavKey,
      // ),
      NavModel(
        page: const MessagesPage(),
        navKey: searchNavKey,
      ),
      NavModel(
        page: FavoritePage(),
        navKey: addnNavKey,
      ),
      // NavModel(
      //   page: const NotificationsPage(),
      //   navKey: notificationNavKey,
      // ),
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
      // appBar: AppBar(
      //   centerTitle: true,
      //   leadingWidth: AppSize.s64,
      //   title: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         AppStrings.welcomeSubtitle,
      //         style: context.textTheme.labelSmall!.copyWith(
      //           fontWeight: FontWeight.w300,
      //           color: ColorManager.welcomeTextColor,
      //           fontSize: FontSizeManager.s10,
      //         ),
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(
      //             Icons.location_on,
      //             color: ColorManager.joyColor,
      //           ),
      //           Text(
      //             'Business Bay, Silver Tower',
      //             style: context.textTheme.labelMedium?.copyWith(
      //                 fontSize: FontSizeManager.s12,
      //                 fontWeight: FontWeight.normal),
      //           ),
      //           const Icon(Icons.arrow_drop_down)
      //         ],
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     Padding(
      //       padding:
      //           const EdgeInsets.only(bottom: AppSize.s8, right: AppSize.s16),
      //       child: Container(
      //         width: AppSize.s50,
      //         height: AppSize.s55,
      //         decoration: BoxDecoration(
      //             borderRadius:
      //                 const BorderRadius.all(Radius.circular(AppSize.s12)),
      //             color: ColorManager.lightGrey),
      //         child: Padding(
      //           padding: const EdgeInsets.all(AppSize.s6),
      //           child: IconButton(
      //             icon: SvgPicture.asset(ImageAssets.bellIcon),
      //             onPressed: () {
      //               _scaffoldKey.currentState?.openDrawer();
      //             },
      //           ),
      //         ),
      //       ),
      //     ),
      //     // Column(
      //     //   mainAxisAlignment: MainAxisAlignment.center,
      //     //   children: [
      //     //     Text(
      //     //       'BRONZE',
      //     //       style: context.textTheme.labelLarge!.copyWith(
      //     //         color: ColorManager.bronzeTire,
      //     //         fontSize: FontSizeManager.s10,
      //     //       ),
      //     //     ),
      //     //     Text(
      //     //       '20 Tokens',
      //     //       style: context.textTheme.labelSmall!.copyWith(
      //     //         fontSize: FontSizeManager.s8,
      //     //       ),
      //     //     ),
      //     //   ],
      //     // ),
      //     // Row(
      //     //   children: [
      //     //     const SizedBox(width: AppSize.s4),
      //     //     SvgPicture.asset(
      //     //       ImageAssets.tierIcon,
      //     //       fit: BoxFit.cover,
      //     //       colorFilter:
      //     //           ColorFilter.mode(ColorManager.bronzeTire, BlendMode.srcIn),
      //     //     ),
      //     //     const SizedBox(width: AppSize.s16),
      //     //   ],
      //     // ),
      //   ],
      //   // leadingWidth: AppSize.s32,
      //   leading: Padding(
      //     padding: EdgeInsets.only(bottom: AppSize.s8, left: AppSize.s16),
      //     child: Container(
      //       width: AppSize.s55,
      //       height: AppSize.s55,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
      //           color: ColorManager.lightGrey),
      //       child: Padding(
      //         padding: const EdgeInsets.all(AppSize.s6),
      //         child: IconButton(
      //           icon: SvgPicture.asset(ImageAssets.menuIcon),
      //           onPressed: () {
      //             _scaffoldKey.currentState?.openDrawer();
      //           },
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      drawer: const AppDrawer(),
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
          fit: StackFit.expand,
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
            AnimatedBuilder(
                animation: Listenable.merge([navBarTransitionAnimation]),
                builder: (context, child) {
                  return Positioned(
                    bottom: navBarTransitionAnimation.value,
                    left: 0,
                    right: 0,
                    child: MediaQuery.removePadding(
                      context: context,
                      removeBottom: true,
                      child: NewNavBar(
                        pageIndex: selectedTab,
                        onTap: (index) {
                          //todo uncomment this to add button
                          // onPressed: () {
                          //   final localServices = getIt<SharedPreferences>();
                          //   String? isMaster = localServices.getString(Constants.isMasterKey);
                          //   if (isMaster == null || isMaster == '0') {
                          //     context.read<AuthBloc>().add(const AuthEvent.setUserType(
                          //       true,
                          //     ));
                          //     context.router.push(const AuthRoute());
                          //   }
                          // },
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
                    ),
                  );
                }),
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(bottom: AppSize.s20),
      //   child: Container(
      //     child: FloatingActionButton(
      //         backgroundColor: Color(0xff0c1237),
      //         elevation: 0,
      //         onPressed: () {
      //           // //todo: move this logic to state management
      //           // final localServices = getIt<SharedPreferences>();
      //           // String? isMaster =
      //           //     localServices.getString(Constants.isMasterKey);
      //           // if (isMaster == null || isMaster == '0') {
      //           //   context.read<AuthBloc>().add(const AuthEvent.setUserType(
      //           //         true,
      //           //       ));
      //           //   context.router.push(OnboardingRoute());
      //           // }
      //         },
      //         shape: RoundedRectangleBorder(),
      //         child: Icon(
      //           FontAwesomeIcons.checkCircle,
      //           color: ColorManager.white,
      //         )),
      //   ),
      // ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorManager.primary,
      shape: const ContinuousRectangleBorder(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p24.w,
        ),
        child: SafeArea(
          child: Column(
            children: [
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
                icon: Image.asset(
                  ImageAssets.calender,
                  color: ColorManager.primary,
                ),
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
                icon:
                    Icon(Icons.location_on_outlined, color: Color(0xffD1D3D4)),
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
                            Image.asset(
                              ImageAssets.light,
                              color: true
                                  ? ColorManager.black
                                  : ColorManager.white,
                            ),
                            SizedBox(width: AppSize.s12.w),
                            Text(
                              'Light',
                              style: context.textTheme.labelLarge!.copyWith(
                                fontSize: FontSizeManager.s15,
                                color: true
                                    ? ColorManager.black
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
                            Image.asset(
                              ImageAssets.dark,
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
    );
  }
}
