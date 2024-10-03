import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

@RoutePage()
class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(AppPadding.p20),
          margin: EdgeInsets.all(AppMargin.m20),
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(AppSize.s20.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close_rounded),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppPadding.p8.w),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.5, color: ColorManager.primary),
                        ),
                      ),
                      child: Text(
                        'Cancel Order',
                        style: context.textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSize.s40.h),
              Image.asset(
                ImageAssets.confirm,
                height: AppSize.s150.h,
              ),
              SizedBox(height: AppSize.s40.h),
              Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: AppSize.s4.h,
                          decoration: BoxDecoration(
                            color: ColorManager.primary,
                            borderRadius: BorderRadius.circular(AppSize.s8.r),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: AppSize.s4.h,
                          decoration: BoxDecoration(
                            color: ColorManager.disabledButtonTextColor,
                            borderRadius: BorderRadius.circular(AppSize.s8.r),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          height: AppSize.s4.h,
                          decoration: BoxDecoration(
                            color: ColorManager.disabledButtonTextColor,
                            borderRadius: BorderRadius.circular(AppSize.s8.r),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          height: AppSize.s4.h,
                          decoration: BoxDecoration(
                            color: ColorManager.disabledButtonTextColor,
                            borderRadius: BorderRadius.circular(AppSize.s8.r),
                          ),
                        ),
                      ),
                    ].separateWith(SizedBox(width: AppSize.s4.w)),
                  ),
                  SizedBox(height: AppSize.s16.h),
                  Text(
                    'Arrives in 17 Minutes',
                    style: context.textTheme.displaySmall,
                  ),
                  Text(
                    'The Master is On his Way to Fix Your Problem.',
                    style: context.textTheme.labelSmall,
                  ),
                ],
              ),
              Divider(
                color: ColorManager.disabledButtonTextColor,
                thickness: AppSize.s1,
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
