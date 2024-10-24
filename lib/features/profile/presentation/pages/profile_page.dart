import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthStatusBloc, AuthStatusState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.maybeMap(
            unAuthenticated: (_) {
              context.router.replace(OnboardingRoute());
            },
            orElse: () {},
          );
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppSize.s6,
                      ),
                      Text(
                        AppStrings.profile,
                        style: getTextStyle(
                            AppSize.s30, FontWeight.w500, Colors.black),
                      ),
                      const SizedBox(height: AppSize.s30),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: ColorManager.welcomeTextColor,
                            maxRadius: AppSize.s25,
                            minRadius: AppSize.s25,
                            child: Text(
                              "HE",
                              style: getTextStyle(
                                  AppSize.s18, FontWeight.w400, Colors.white),
                            ),
                          ),
                          const SizedBox(width: AppSize.s15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Osman Yilmaz",
                                style: getTextStyle(
                                        AppSize.s16,
                                        FontWeight.w500,
                                        ColorManager.welcomeTextColor)
                                    .copyWith(height: 1.25),
                              ),
                              Text(
                                "Total 12 Orders",
                                style: getTextStyle(
                                        AppSize.s14,
                                        FontWeight.w300,
                                        ColorManager.tabBarColor)
                                    .copyWith(height: 1.25),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: AppSize.s25.h),
                      Divider(
                        height: 0,
                        color: Color(0xffe0e2ea),
                      ),
                      SizedBox(height: AppSize.s25.h),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.s24),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(AppSize.s15),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Color.fromARGB(51, 0, 0, 0))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSize.s15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "Gelirx'de şimdi bir hizmet ver",
                                  style: getTextStyle(
                                      AppSize.s18,
                                      FontWeight.w500,
                                      ColorManager.welcomeTextColor),
                                ),
                                Text(
                                    "Sende ek gelir elde etmek için, uzman olduğun konuda hizmet verebilirsin.",
                                    style: getTextStyle(
                                        AppSize.s13,
                                        FontWeight.w300,
                                        ColorManager.welcomeTextColor))
                              ],
                            ),
                          ),
                          Image.asset(
                            ImageAssets.masterProfilePhoto,
                            height: AppSize.s120,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
                  child: Column(
                    children: [
                      const SizedBox(height: AppSize.s15),
                      _buildInfoRow(
                          ImageAssets.navbarProfile, "Master Dashboard", () {
                        context.router.push(const MasterDashboardRoute());
                      }),
                      _buildInfoRow(ImageAssets.navbarProfile, "My Demands",
                          () {
                        context.router.push(const BookingHistoryRoute());
                      }),
                      _buildInfoRow(ImageAssets.navbarProfile,
                          "Personal Information", () {}),
                      _buildInfoRow(ImageAssets.navbarProfile,
                          "Personal Information", () {}),
                      _buildInfoRow(ImageAssets.navbarProfile,
                          "Personal Information", () {}),
                      const SizedBox(height: AppSize.s15),
                      const Divider(
                        color: Color(0xffe0e2ea),
                        height: 0,
                      ),
                      const SizedBox(height: AppSize.s30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(
                                vertical: AppSize.s15),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(AppSize.s8),
                            ),
                          ),
                          child: Text("Log Out",
                              style: getTextStyle(
                                  AppSize.s16, FontWeight.w600, Colors.black)),
                        ),
                      ),
                      SizedBox(
                        height: AppSize.s30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Hizmet Şartları",
                            style: getTextStyle(AppSize.s12, FontWeight.w600,
                                    ColorManager.black)
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                          Text(
                            "•",
                            style: getTextStyle(AppSize.s12, FontWeight.w600,
                                ColorManager.black),
                          ),
                          Text(
                            "Gizlilik Politikası",
                            style: getTextStyle(AppSize.s12, FontWeight.w600,
                                    ColorManager.black)
                                .copyWith(decoration: TextDecoration.underline),
                          ),
                          Text(
                            "•",
                            style: getTextStyle(AppSize.s12, FontWeight.w600,
                                ColorManager.black),
                          ),
                          Text(
                            "Gizlilik Tercihleriniz",
                            style: getTextStyle(AppSize.s12, FontWeight.w600,
                                    ColorManager.black)
                                .copyWith(decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                      SizedBox(
                        height: AppSize.s30,
                      ),
                      Center(
                        heightFactor: 0,
                        child: Text(
                          "© 2024 Aymer Prime Digital Media CO. L.L.C.\nTüm hakları saklıdır.",
                          style: getTextStyle(
                              AppSize.s12, FontWeight.w400, Color(0xff828e95)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: AppSize.s100,
                      ),
                    ],
                  ),
                )
                // Container(
                //   padding: const EdgeInsets.all(
                //     AppPadding.p16,
                //   ),
                //   decoration: BoxDecoration(
                //     color: ColorManager.white,
                //     borderRadius: BorderRadius.circular(AppSize.s8),
                //   ),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         'Phone number',
                //         style: context.textTheme.labelLarge!.copyWith(
                //           fontSize: FontSizeManager.s15,
                //         ),
                //       ),
                //       SizedBox(height: AppSize.s8.h),
                //       Container(
                //         //height: AppSize.s60,
                //         width: double.infinity,
                //         padding: const EdgeInsets.all(AppPadding.p16),
                //         decoration: BoxDecoration(
                //           color: ColorManager.textfieldNumFillColor,
                //           borderRadius: BorderRadius.circular(AppSize.s12),
                //         ),
                //         child: Text('+971502549627',
                //             style: context.textTheme.labelLarge),
                //       ),
                //       SizedBox(height: AppSize.s24.h),
                //       Text(
                //         'Birthday',
                //         style: context.textTheme.labelLarge!.copyWith(
                //           fontSize: FontSizeManager.s15,
                //         ),
                //       ),
                //       SizedBox(height: AppSize.s8.h),
                //       Container(
                //         //height: AppSize.s60,
                //         width: double.infinity,
                //         padding: const EdgeInsets.all(AppPadding.p14),
                //         decoration: BoxDecoration(
                //           color: ColorManager.textfieldNumFillColor,
                //           borderRadius: BorderRadius.circular(AppSize.s12),
                //         ),
                //         child: Text(
                //           '1956',
                //           style: context.textTheme.labelLarge,
                //         ),
                //       ),
                //       SizedBox(height: AppSize.s24.h),
                //       Text(
                //         'E-mail',
                //         style: context.textTheme.labelLarge!.copyWith(
                //           fontSize: FontSizeManager.s15,
                //         ),
                //       ),
                //       SizedBox(height: AppSize.s8.h),
                //       Container(
                //         //height: AppSize.s60,
                //         width: double.infinity,
                //         padding: const EdgeInsets.all(AppPadding.p16),
                //         decoration: BoxDecoration(
                //           color: ColorManager.textfieldNumFillColor,
                //           borderRadius: BorderRadius.circular(AppSize.s12),
                //         ),
                //         child: Text(
                //           'abc@outlook.com',
                //           style: context.textTheme.labelLarge,
                //         ),
                //       ),
                //       const SizedBox(height: AppSize.s16),
                //       context.read<AuthStatusBloc>().state.maybeMap(
                //             orElse: () {
                //               return SizedBox();
                //             },
                //             authenticated: (value) => SizedBox(
                //               width: double.infinity,
                //               child: ElevatedButton(
                //                 onPressed: () {
                //                   context.read<AuthStatusBloc>().add(
                //                         const AuthStatusEvent.signedOut(),
                //                       );
                //                 },
                //                 child: Padding(
                //                   padding: EdgeInsets.symmetric(
                //                     horizontal: AppPadding.p20.w,
                //                     vertical: AppPadding.p12.h,
                //                   ),
                //                   child: const Text(
                //                     AppStrings.logOut,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String icon, String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.s15),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: AppSize.s25,
            ),
            SizedBox(
              width: AppSize.s15,
            ),
            Text(
              title,
              style: getTextStyle(AppSize.s15, FontWeight.w300, Colors.black),
            ),
            Spacer(),
            Icon(
              FontAwesomeIcons.chevronRight,
              size: AppSize.s14,
              color: ColorManager.welcomeTextColor,
            )
          ],
        ),
      ),
    );
  }
}
