import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';

@RoutePage()
class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.close_rounded),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p8.w),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom:
                            BorderSide(width: 1.5, color: ColorManager.primary),
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
            Text('data'),
          ],
        ),
      ),
    );
  }
}
