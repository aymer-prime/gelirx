import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'dart:ui' as ui;

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
    return BottomAppBar(
      height: AppSize.s60.h + MediaQueryData.fromWindow(ui.window).padding.bottom/2,
      shape: CircularNotchedRectangle(),
      notchMargin: 2,
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
          padding:  EdgeInsets.only(bottom: MediaQueryData.fromWindow(ui.window).padding.bottom),
          child: Row(
            children: [
              NavItem(
                label: AppStrings.home,
                icon: SvgPicture.asset(ImageAssets.navbarHome),
                activeIcon: SvgPicture.asset(
                  ImageAssets.navbarHome,
                  color: ColorManager.primary,
                ),
                isSelected: pageIndex == 0,
                onTap: () => onTap(0),
              ),
              NavItem(
                label: AppStrings.booking,
                icon: SvgPicture.asset(ImageAssets.navbarBooking),
                activeIcon: SvgPicture.asset(
                  ImageAssets.navbarBooking,
                  color: ColorManager.darkPrimary,
                ),
                isSelected: pageIndex == 1,
                onTap: () => onTap(1),
              ),
              const SizedBox(width: 80),
              NavItem(
                label: AppStrings.notification,
                icon: SvgPicture.asset(ImageAssets.navbarNotification),
                activeIcon: SvgPicture.asset(
                  ImageAssets.navbarNotification,
                  color: ColorManager.darkPrimary,
                ),
                isSelected: pageIndex == 2,
                onTap: () => onTap(2),
              ),
              NavItem(
                label: AppStrings.profile,
                icon: SvgPicture.asset(ImageAssets.navbarProfile),
                activeIcon: SvgPicture.asset(
                  ImageAssets.navbarProfile,
                  color: ColorManager.darkPrimary,
                ),
                isSelected: pageIndex == 3,
                onTap: () => onTap(3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final Widget icon;
  final Widget activeIcon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  const NavItem({
    super.key,
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: isSelected
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  activeIcon,
                  Text(
                    label,
                    maxLines: 1,
                    style: context.textTheme.labelSmall!.copyWith(
                      color: ColorManager.darkPrimary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )
            : icon,
      ),
    );
  }
}

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel({required this.page, required this.navKey});
}
