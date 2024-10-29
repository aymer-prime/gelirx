import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/favorite/domain/entities/favorite_entities.dart';
import 'package:gelirx/features/favorite/presentation/bloc/favorite_bloc.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loadSuccess: (success) => success.favorites.isEmpty
                ? Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'No Favorite Masters',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSize.s20),
                          ElevatedButton(
                            onPressed: () {
                              var userEntity =
                                  context.read<AuthStatusBloc>().state.maybeMap(
                                        orElse: () => null,
                                        authenticated: (userEntity) =>
                                            userEntity.user,
                                      );
                              context.read<FavoriteBloc>().add(
                                    FavoriteEvent.getFavoriteMasters(
                                        userEntity),
                                  );
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 30.0,
                                vertical: 16.0,
                              ),
                              child: Text('Refresh'),
                            ),
                          )
                        ]),
                  )
                : FavoritePageContent(
                    favoriteMasters: success.favorites,
                  ),
            loadFailed: (failure) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      failure.apiException.maybeMap(
                        orElse: () => failure.apiException.toString(),
                        defaultException: (value) => value.message,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: AppSize.s20),
                    ElevatedButton(
                      onPressed: () {
                        var userEntity = context
                            .read<AuthStatusBloc>()
                            .state
                            .maybeMap(
                              orElse: () => null,
                              authenticated: (userEntity) => userEntity.user,
                            );
                        context.read<FavoriteBloc>().add(
                              FavoriteEvent.getFavoriteMasters(userEntity),
                            );
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.0,
                          vertical: 16.0,
                        ),
                        child: Text('Try Again'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FavoritePageContent extends StatelessWidget {
  final List<Favorite> favoriteMasters;
  const FavoritePageContent({
    super.key,
    required this.favoriteMasters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: AppPadding.p24,
            top: AppPadding.p24,
          ),
          child: Text(
            'Favorite',
            style: getRegularStyle(
              color: ColorManager.black,
              fontSize: FontSizeManager.s30,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: favoriteMasters.length,
            padding: const EdgeInsets.only(
              top: AppPadding.p30,
            ),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p24,
              ),
              child: FavMasterCard(
                favMaster: favoriteMasters[index],
                unfavMaster: (id) {
                  var userEntity =
                      context.read<AuthStatusBloc>().state.maybeMap(
                            orElse: () => null,
                            authenticated: (userEntity) => userEntity.user,
                          );
                  context.read<FavoriteBloc>().add(
                        FavoriteEvent.removeFavorite(
                          id,
                          userEntity,
                          favoriteMasters,
                        ),
                      );
                },
              ),
            ),
            separatorBuilder: (context, index) =>
                const SizedBox(height: AppSize.s24),
          ),
        ),
      ],
    );
  }
}

class FavMasterCard extends StatelessWidget {
  final Favorite favMaster;
  final Function(String id) unfavMaster;
  const FavMasterCard({
    super.key,
    required this.favMaster,
    required this.unfavMaster,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 1,
                  color: Color.fromARGB((255 * 0.2).floor(), 0, 0, 0),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p15),
              child: Row(
                children: [
                  Flexible(
                    flex: 4,
                    child: Stack(
                      children: [
                        SizedBox(
                          height: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              AppSize.s16,
                            ),
                            child: Image.asset(
                              ImageAssets.handyman,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          height: 30,
                          width: 30,
                          child: IconButton(
                            onPressed: () {
                              unfavMaster(favMaster.id);
                            },
                            style: IconButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: ColorManager.white,
                            ),
                            icon: Icon(
                              FontAwesomeIcons.solidHeart,
                              color: ColorManager.joyColor,
                              size: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSize.s15),
                  Flexible(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${favMaster.name} ${favMaster.surname}',
                          style: getMediumStyle(
                            color: ColorManager.black,
                            fontSize: FontSizeManager.s20,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              ImageAssets.star,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: ' ${favMaster.point}   ',
                                    style:
                                        context.textTheme.bodyLarge!.copyWith(
                                      color: ColorManager.black,
                                      fontSize: FontSizeManager.s14,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '(${favMaster.totalInteraction} Reviews)',
                                    style: getLightStyle(
                                      color: ColorManager.tabBarColor,
                                      fontSize: FontSizeManager.s14,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: AppSize.s6),
                        Wrap(
                          children: favMaster.services
                              .map(
                                (e) => Text(
                                  e.name,
                                  style: getRegularStyle(
                                    color: ColorManager.textSubtitleColor,
                                    fontSize: FontSizeManager.s13,
                                  ).copyWith(
                                    height: 1.25,
                                  ),
                                ),
                              )
                              .toList()
                              .separateWith(
                                Text(
                                  ', ',
                                  style: getRegularStyle(
                                    color: ColorManager.textSubtitleColor,
                                    fontSize: FontSizeManager.s13,
                                  ).copyWith(
                                    height: 1.25,
                                  ),
                                ),
                              ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
