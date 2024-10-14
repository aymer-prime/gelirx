import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'dart:ui' as ui;

import '../../../auth/presentation/bloc/auth_bloc.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AuthBloc, AuthState>(
    builder: (context, state) {
    return BottomAppBar(
      height: AppSize.s90.h ,
      //  shape: CircularNotchedRectangle(),
      //  notchMargin: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: EdgeInsets.zero,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          // border: Border.symmetric(
          //   horizontal: BorderSide(
          //     color: ColorManager.darkPrimary,
          //     width: AppSize.s0_5,
          //   ),
          // ),
          // borderRadius: BorderRadius.circular(AppSize.s12),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQueryData.fromWindow(ui.window).padding.bottom/3),
          child: Row(
            children: [
              NavItem(
                label: AppStrings.home,
                icon: SvgPicture.asset(ImageAssets.navbarHome),
                activeIcon: SvgPicture.asset(
                  ImageAssets.navbarHome,
                  color: ColorManager.darkPrimary,
                ),
                isSelected: pageIndex == 0,
                onTap: ()  =>
                    onTap(0), isCenterNavItem: false,
              ),
              NavItem(
                label: AppStrings.discover,
                icon: SvgPicture.asset(
                  ImageAssets.navbarDiscover,
                  height: AppSize.s20,
                ),
                activeIcon: SvgPicture.asset(ImageAssets.navbarDiscover,
                    height: AppSize.s20, color: ColorManager.darkPrimary),
                isSelected: pageIndex == 2,
                onTap: () => onTap(2), isCenterNavItem: false,
              ),
              NavItem(
                label: AppStrings.provideService,
                icon: SvgPicture.asset(ImageAssets.navbarAdd,
                    height: AppSize.s20, color: ColorManager.white),
                activeIcon: SvgPicture.asset(ImageAssets.navbarAdd,
                    height: AppSize.s20, color: ColorManager.white),
                isSelected: pageIndex == 2,
                onTap: ()  {
                  if (state.user.isNone()) {
                    context.router.push(OnboardingRoute());
                  }
                }, isCenterNavItem: true,
              ),
              //  SizedBox(width: AppSize.s80.w),
              NavItem(
                label: AppStrings.messages,
                icon: Icon(FontAwesomeIcons.message),
                activeIcon: Icon(FontAwesomeIcons.message),
                isSelected: pageIndex == 1,
                onTap: () => onTap(1), isCenterNavItem: false,
              ),

              // NavItem(
              //   label: AppStrings.notification,
              //   icon: SvgPicture.asset(ImageAssets.navbarNotification),
              //   activeIcon: SvgPicture.asset(
              //     ImageAssets.navbarNotification,
              //     color: ColorManager.darkPrimary,
              //   ),
              //   isSelected: pageIndex == 3,
              //   onTap: () => onTap(3),
              // ),
              NavItem(
                label: AppStrings.profile,
                icon: SvgPicture.asset(ImageAssets.navbarProfile),
                activeIcon: SvgPicture.asset(
                  ImageAssets.navbarProfile,
                  color: ColorManager.darkPrimary,
                ),
                isSelected: pageIndex == 3,
                onTap: () => onTap(3), isCenterNavItem: false,
              ),
              // SizedBox(width: AppSize.s80.w),
            ],
          ),
        ),
      ),
    );
  },
);
  }
}

class NavItem extends StatelessWidget {
  final Widget icon;
  final Widget activeIcon;
  final String label;
  final bool isSelected;
  final bool isCenterNavItem;
  final VoidCallback onTap;
  const NavItem({
    super.key,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isSelected,
    required this.onTap, 
    required this.isCenterNavItem,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                width: AppSize.s45,
                  height: AppSize.s55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(AppSize.s12)),
                      color: isCenterNavItem 
                          ? ColorManager.joyColor
                      : ColorManager.white),
                  child: Padding(
                    padding: const EdgeInsets.all(AppSize.s12),
                    child: icon,
                  )),
            ),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                style: context.textTheme.labelSmall!.copyWith(
                  color: ColorManager.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel({required this.page, required this.navKey});
}
