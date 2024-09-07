import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gelirx/app/extentions/context.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/presentation/bloc/home_bloc.dart';
import 'package:gelirx/features/home/presentation/widgets/home_dragable_sheet.dart';
import 'package:gelirx/features/home/presentation/widgets/home_map_widget.dart';

@RoutePage()
class AlternateHomePage extends StatelessWidget {
  const AlternateHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeBloc>()
        ..add(
          const HomeEvent.getCurrentPosition(),
        )
        ..add(
          const HomeEvent.getCategories(),
        ),
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
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
                Container(
                  padding: const EdgeInsets.all(AppPadding.p16),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.welcomeSubtitle,
                        style: context.textTheme.titleMedium,
                      ),
                      Text(
                        AppStrings.welcomeTitle,
                        style: context.textTheme.displayMedium,
                      ),
                      const SizedBox(height: AppSize.s16),
                      TextField(
                        decoration: InputDecoration(
                          hintText: AppStrings.searchHint,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(AppPadding.p8),
                            child: SizedBox(
                              height: AppSize.s32,
                              width: AppSize.s32,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: SvgPicture.asset(
                                  ImageAssets.searchIcon,
                                  height: AppSize.s16,
                                  width: AppSize.s16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                HomeDraggableSheet(
                  categories: state.categories,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
