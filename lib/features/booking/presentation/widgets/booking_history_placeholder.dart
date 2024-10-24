import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/widgets/dialogs/master_dialog_screen.dart';
import 'package:shimmer/shimmer.dart';

class BookingHistoryPlaceholder extends StatelessWidget {
  const BookingHistoryPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(
          AppSize.s20,
        ),
      ),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: AppSize.s10,
                  left: AppSize.s15,
                  right: AppSize.s80,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        MasterDialogScreen.instance().hide();
                        context.router.replace(const AlternateMainRoute());
                      },
                      child: const SizedBox(
                        height: AppSize.s30,
                        width: AppSize.s30,
                        child:
                            Icon(FontAwesomeIcons.arrowLeft, size: AppSize.s18),
                      ),
                    ),
                    SizedBox(width: AppSize.s20),
                    Flexible(
                      child: Container(
                        //width: AppSize.s150.w,
                        decoration: ShapeDecoration(
                          shape: StadiumBorder(),
                          color: ColorManager.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSize.s30),
            Flexible(
              flex: 19,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSize.s20,
                          ),
                          color: ColorManager.grey,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSize.s20,
                          ),
                          color: ColorManager.grey,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppSize.s20,
                          ),
                          color: ColorManager.grey,
                        ),
                      ),
                    ),
                  ].separateWith(
                    const SizedBox(height: AppSize.s20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
