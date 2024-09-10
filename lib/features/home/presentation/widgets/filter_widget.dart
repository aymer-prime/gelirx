import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/extentions/string.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
import 'package:gelirx/features/home/presentation/widgets/filter_button.dart';

class FilterWidget extends StatelessWidget {
  final String title;
  final Function(int index) onSelect;
  final List<Category> data;
  final int currentFilterIndex;
  const FilterWidget(
      {super.key,
      required this.title,
      required this.data,
      required this.currentFilterIndex,
      required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheet(
          context: context,
          backgroundColor: ColorManager.background,
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p16,
                vertical: AppPadding.p12,
              ),
              child: SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: AppSize.s4,
                      width: AppSize.s32,
                      decoration: BoxDecoration(
                        color: ColorManager.lightPrimary,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppPadding.p24,
                        bottom: AppPadding.p32,
                      ),
                      child: Text(
                        title,
                        style: context.textTheme.labelMedium!
                            .copyWith(fontWeight: FontWeightManager.semiBold),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return FilterButton(
                            filter: data[index],
                            onSelect: () {
                              onSelect(index);
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        height: AppSize.s40,
        decoration: BoxDecoration(
          color: ColorManager.lightPrimary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPadding.p8),
              child: CachedNetworkImage(
                imageUrl: data[currentFilterIndex].img,
                fit: BoxFit.cover,
                height: AppSize.s18,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Text(
                data[currentFilterIndex].name.capitalizeFirst(),
                style: context.textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: ColorManager.white,
            )
          ],
        ),
      ),
    );
  }
}
