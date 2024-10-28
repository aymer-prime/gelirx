import 'package:flutter/Material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:shimmer/shimmer.dart';

class MasterInteractionsPlaceholder extends StatelessWidget {
  const MasterInteractionsPlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15,
            width: 80,
            decoration: BoxDecoration(
              color: ColorManager.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.s20),
              ),
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 15,
            width: 120,
            decoration: BoxDecoration(
              color: ColorManager.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.s20),
              ),
            ),
          ),
          SizedBox(height: 8),
          ...List.generate(
            5,
            (index) => Row(
              children: [
                Icon(
                  FontAwesomeIcons.solidStar,
                  size: 16,
                ),
                SizedBox(width: 8),
                Flexible(
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: ColorManager.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(AppSize.s20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ).separateWith(
            SizedBox(height: 6),
          ),
          SizedBox(height: 20),
          Container(
            height: AppSize.s120,
            decoration: BoxDecoration(
              color: ColorManager.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.s20),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: AppSize.s120,
            decoration: BoxDecoration(
              color: ColorManager.grey,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSize.s20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
