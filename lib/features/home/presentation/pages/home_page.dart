import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/misc/functions.dart';
import 'package:gelirx/features/home/presentation/widgets/home_draggable_sheet.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) =>
            previous.isLoading != current.isLoading,
        listener: (context, state) {
          if (state.isLoading) {
            LoadingScreen.instance().showLoadingScreen(
              context: context,
              text: 'Loading . . .',
            );
          } else {
            LoadingScreen.instance().hide();
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              state.userPosition.fold(
                () => const Center(
                  child: CircularProgressIndicator(),
                ),
                (userPosition) => HomeMap(
                  userPosition: userPosition,
                  range: state.range,
                ),
              ),
              HomeDraggableSheet(
                categories: state.categories,
                subCategories: state.subCategories,
                catIndex: state.catIndex,
                subCatIndex: state.subCatIndex,
              ),
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Location',
                            style: context.textTheme.labelSmall!.copyWith(
                              fontSize: FontSizeManager.s10,
                            ),
                          ),
                          Row(
                            children: [
                              Text('Business Bay, Silver Tower',
                                  style: context.textTheme.labelMedium),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'BRONZE',
                                style: context.textTheme.labelLarge!.copyWith(
                                  color: ColorManager.bronzeTire,
                                  fontSize: FontSizeManager.s10,
                                ),
                              ),
                              Text(
                                '20 Tokens',
                                style: context.textTheme.labelSmall!.copyWith(
                                  fontSize: FontSizeManager.s8,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: AppSize.s4),
                          SvgPicture.asset(
                            ImageAssets.tierIcon,
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                ColorManager.bronzeTire, BlendMode.srcIn),
                          ),
                          const SizedBox(width: AppSize.s4),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s220,
      height: AppSize.s160,
      padding: const EdgeInsets.symmetric(
        vertical: AppPadding.p20,
        horizontal: AppPadding.p12,
      ),
      decoration: BoxDecoration(
        color: getCategoryColor(),
        borderRadius: BorderRadius.circular(
          AppSize.s8,
        ),
      ),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Offer Dry Cleaning',
                  style: context.textTheme.labelLarge,
                ),
                const SizedBox(width: AppSize.s4),
                const Icon(Icons.info)
              ],
            ),
            const SizedBox(height: AppSize.s12),
            Text(
              'Get 25%',
              style: context.textTheme.displayMedium,
            ),
            const SizedBox(height: AppSize.s12),
            SizedBox(
              height: AppSize.s32,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorManager.white,
                  shape: StadiumBorder(),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.p12,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Grab offer',
                        style: context.textTheme.labelLarge!.copyWith(
                          color: ColorManager.lightPrimary,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: ColorManager.lightPrimary,
                      )
                    ],
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
