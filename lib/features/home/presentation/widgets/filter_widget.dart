import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/Material.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/extensions/string.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/widgets/filter_button.dart';

class FilterWidget extends StatelessWidget {
  final String title;
  final Function(int index) onSelect;
  final List<String> data;
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
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p16,
        ),
        height: AppSize.s40,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data[currentFilterIndex].capitalizeFirst(),
              style: context.textTheme.titleMedium!.copyWith(
                color: ColorManager.primary,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: ColorManager.primary,
            )
          ],
        ),
      ),
    );
  }
}
