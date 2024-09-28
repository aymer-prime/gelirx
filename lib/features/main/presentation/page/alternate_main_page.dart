import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Location',
              style: context.textTheme.labelSmall!.copyWith(
                fontSize: FontSizeManager.s10,
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
      ),
      drawer: Drawer(),
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
        margin: const EdgeInsets.only(bottom: AppMargin.m12),
        child: FloatingActionButton(
          backgroundColor: ColorManager.white,
          elevation: 0,
          onPressed: () => debugPrint("Add Button pressed"),
          shape: CircleBorder(
            side: BorderSide(
              width: AppSize.s2,
              color: ColorManager.darkPrimary,
            ),
          ),
          child: Icon(
            Icons.add_rounded,
            color: ColorManager.darkPrimary,
          ),
        ),
      ),
    );
  }
}
