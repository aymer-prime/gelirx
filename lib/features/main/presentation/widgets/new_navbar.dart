import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'dart:ui' as ui;

import '../../../auth/presentation/bloc/auth_bloc.dart';

class NewNavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NewNavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return SizedBox(
          height: 70,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 60,
                  padding: EdgeInsets.only(
                      bottom:
                          MediaQueryData.fromWindow(ui.window).padding.bottom /
                              3),
                  color: Colors.white,
                  child: Row(
                    children: [
                      NavItem(
                        label: AppStrings.home,
                        icon: SvgPicture.asset(ImageAssets.navbarHome),
                        activeIcon: SvgPicture.asset(
                          ImageAssets.navbarHome,
                          color: ColorManager.joyColor,
                        ),
                        isSelected: pageIndex == 0,
                        onTap: () => onTap(0),
                        isCenterNavItem: false,
                      ),
                      NavItem(
                        label: AppStrings.favorite,
                        icon: SvgPicture.asset(
                          ImageAssets.navbarFav,
                          fit: BoxFit.cover,
                        ),
                        activeIcon: SvgPicture.asset(
                          ImageAssets.navbarFav,
                          color: ColorManager.joyColor,
                        ),
                        isSelected: pageIndex == 2,
                        onTap: () => onTap(2),
                        isCenterNavItem: false,
                      ),
                      Spacer(),
                      NavItem(
                        label: AppStrings.messages,
                        icon: SvgPicture.asset(
                          ImageAssets.navbarMessages,
                        ),
                        activeIcon: SvgPicture.asset(
                          ImageAssets.navbarMessages,
                          color: ColorManager.joyColor,
                        ),
                        isSelected: pageIndex == 1,
                        onTap: () => onTap(1),
                        isCenterNavItem: false,
                      ),
                      NavItem(
                        label: AppStrings.profile,
                        icon: SvgPicture.asset(ImageAssets.navbarProfile),
                        activeIcon: SvgPicture.asset(
                          ImageAssets.navbarProfile,
                          color: ColorManager.joyColor,
                        ),
                        isSelected: pageIndex == 3,
                        onTap: () => onTap(3),
                        isCenterNavItem: false,
                      ),
                      // SizedBox(width: AppSize.s80.w),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: SizedBox(
                    width: 70,
                    height: 62,
                    child: FloatingActionButton(
                      elevation: 0.0,
                      backgroundColor: ColorManager.blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppSize.s8,
                        ),
                      ),
                      onPressed: () {
                        if (state.user.isNone()) {
                          context.router.push(const AuthRoute());
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            ImageAssets.location,
                            height: 29,
                          ),
                          Text(
                            'Hizmet Ver',
                            style: getRegularStyle(
                              color: ColorManager.white,
                              fontSize: FontSizeManager.s10,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
                decoration: BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(Radius.circular(AppSize.s12)),
                    color: isCenterNavItem
                        ? ColorManager.joyColor
                        : ColorManager.white),
                child: isSelected ? activeIcon : icon,
              ),
            ),
            Flexible(
              child: Text(
                label,
                maxLines: 1,
                style: context.textTheme.labelSmall!.copyWith(
                  color:
                      isSelected ? ColorManager.joyColor : ColorManager.black,
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
