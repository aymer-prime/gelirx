import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/master/presentation/bloc/master_bloc.dart';
import 'package:gelirx/features/master/presentation/widget/master_info_card.dart';
import 'package:gelirx/features/master/presentation/widget/master_interactions_placeholder.dart';
import 'package:shimmer/shimmer.dart';

import '../widget/review_star_row.dart';

@RoutePage()
class MasterPage extends StatelessWidget {
  final double rating = 3.5;
  final Master master;
  const MasterPage({
    super.key,
    required this.master,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: BlocProvider(
        create: (context) => getIt<MasterBloc>()
          ..add(
            MasterEvent.getMasterInfo(master.id),
          )
          ..add(
            MasterEvent.getMasterInteractions(master.id),
          ),
        child: BlocBuilder<MasterBloc, MasterState>(
          builder: (context, state) {
            return Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: AppSize.s194,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: state.masterInfo.fold(
                          () => Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            enabled: true,
                            child: Container(
                              height: AppSize.s194,
                              decoration: BoxDecoration(
                                color: ColorManager.grey,
                              ),
                            ),
                          ),
                          (a) => a.fold(
                            (l) => Center(
                              child: Text(
                                l.maybeMap(
                                  orElse: () => 'Something Wrong Happened!!!',
                                  defaultException: (value) => value.message,
                                ),
                              ),
                            ),
                            (r) => Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                              ),
                              child: CachedNetworkImage(
                                imageUrl: r.services.first.img.photo,
                                fit: BoxFit.cover,
                                //height: AppSize.s194,
                              ),
                            ),
                          ),
                        ),
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: AppSize.s40,
                              height: AppSize.s40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManager.lightGrey,
                              ),
                              child: const Icon(
                                FontAwesomeIcons.caretLeft,
                                size: AppSize.s18,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s20),
                          child: Container(
                            width: AppSize.s40,
                            height: AppSize.s40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManager.lightGrey,
                            ),
                            child:
                                Icon(FontAwesomeIcons.heart, size: AppSize.s18),
                          ),
                        ),
                      ],
                    ),
                    SliverPadding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: AppSize.s16),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            SizedBox(height: AppSize.s16),
                            state.masterInfo.fold(
                              () => Shimmer.fromColors(
                                baseColor: Colors.grey.shade300,
                                highlightColor: Colors.grey.shade100,
                                enabled: true,
                                child: Container(
                                  height: AppSize.s160,
                                  decoration: BoxDecoration(
                                    color: ColorManager.grey,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(AppSize.s20),
                                    ),
                                  ),
                                ),
                              ),
                              (a) => a.fold(
                                (l) => Center(
                                  child: Text(
                                    l.maybeMap(
                                      orElse: () =>
                                          'Something Wrong Happened!!!',
                                      defaultException: (value) =>
                                          value.message,
                                    ),
                                  ),
                                ),
                                (r) => MasterInfoCard(info: r),
                              ),
                            ),
                            const SizedBox(height: AppSize.s16),
                            state.masterInteractions.fold(
                              () => const MasterInteractionsPlaceholder(),
                              (a) => a.fold(
                                (l) => Center(
                                  child: Text(
                                    l.maybeMap(
                                      orElse: () =>
                                          'Something Wrong Happened!!!',
                                      defaultException: (value) =>
                                          value.message,
                                    ),
                                  ),
                                ),
                                (r) => Reviews(
                                  interactions: r,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSize.s100),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: AppSize.s0,
                  left: AppSize.s0,
                  right: AppSize.s0,
                  child: Container(
                    padding: const EdgeInsets.all(AppSize.s24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(
                                width: AppSize.s1, color: Color(0xffe0e2ea)))),
                    child: ElevatedButton(
                      onPressed: () {
                        context.router.push(BookingDetailsRoute(
                          masterId: master.id,
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.joyColor,
                        padding:
                            const EdgeInsets.symmetric(vertical: AppSize.s16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(AppSize.s8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Call Now",
                              style: getTextStyle(
                                  AppSize.s16, FontWeight.w600, Colors.white)),
                          Text(" (40 min)",
                              style: getTextStyle(AppSize.s16, FontWeight.w300,
                                  Colors.white.withOpacity(0.7))),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
