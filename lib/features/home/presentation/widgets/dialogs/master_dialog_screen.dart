import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/home/domain/entities/master.dart';
import 'package:gelirx/features/home/presentation/widgets/dialogs/master_dialog_controller.dart';

class MasterDialogScreen {
  //singleton pattern
  MasterDialogScreen._sharedInstance();
  static final MasterDialogScreen _shared =
      MasterDialogScreen._sharedInstance();
  factory MasterDialogScreen.instance() => _shared;

  MasterDialogController? _controller;

  void showMasterDialog({
    required BuildContext context,
    required Master master,
    required bool isFavorite,
    required Function(bool) toggleFavorite,
  }) {
    if (_controller?.update(
          MasterDialogObject(
            master: master,
            isFavorite: isFavorite,
          ),
        ) ??
        false) {
      return;
    } else {
      _controller = _showMasterDialog(
        context: context,
        master: master,
        isFavorite: isFavorite,
        toggleFavorite: (Master currentMaster, bool currentState) {
          toggleFavorite(currentState);
          _controller?.update(
            MasterDialogObject(
              master: currentMaster,
              isFavorite: !currentState,
            ),
          );
        },
      );
    }
  }

  void hide() {
    _controller?.close();
    _controller = null;
  }

  bool isShowing() {
    return _controller != null;
  }

  MasterDialogController _showMasterDialog({
    required BuildContext context,
    required Master master,
    required bool isFavorite,
    required Function(Master, bool) toggleFavorite,
  }) {
    final _master = StreamController<MasterDialogObject>();
    _master.add(
      MasterDialogObject(
        master: master,
        isFavorite: isFavorite,
      ),
    );
    final state = Overlay.of(context);
    final overlay = OverlayEntry(
      builder: (context) {
        return Column(
          children: [
            Spacer(),
            TapRegion(
              //onTapOutside: (_) => hide(),
              child: StreamBuilder<MasterDialogObject>(
                stream: _master.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Animate(
                      effects: const [MoveEffect(begin: Offset(0.0, 100))],
                      child: MasterDialog(
                        master: snapshot.data!.master,
                        hide: hide,
                        isFavorite: snapshot.data!.isFavorite,
                        toggleFavorite: () {
                          toggleFavorite(
                            snapshot.data!.master,
                            snapshot.data!.isFavorite,
                          );
                        },
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        );
      },
    );
    state.insert(overlay);
    return MasterDialogController(
      close: () {
        _master.close();
        overlay.remove();
        return true;
      },
      update: (masterDialogObject) {
        _master.add(masterDialogObject);
        return true;
      },
    );
  }
}

class MasterDialog extends StatelessWidget {
  final Master master;
  final bool isFavorite;
  final VoidCallback hide;
  final VoidCallback toggleFavorite;
  const MasterDialog({
    super.key,
    required this.master,
    required this.hide,
    required this.isFavorite,
    required this.toggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: SizedBox(
        width: double.infinity,
        child: GestureDetector(
          onTap: () {
            context.router.push(MasterRoute(
              master: master,
            ));
          },
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.all(
                  AppMargin.m20,
                ),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 1,
                      color: Color.fromARGB((255 * 0.3).floor(), 0, 0, 0),
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
                                borderRadius:
                                    BorderRadius.circular(AppSize.s16),
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
                                onPressed: toggleFavorite,
                                style: IconButton.styleFrom(
                                  shape: const CircleBorder(),
                                  backgroundColor: ColorManager.white,
                                ),
                                icon: isFavorite
                                    ? Icon(
                                        FontAwesomeIcons.solidHeart,
                                        color: ColorManager.joyColor,
                                        size: 14,
                                      )
                                    : const Icon(
                                        FontAwesomeIcons.heart,
                                        size: 14,
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSize.s15),
                      Flexible(
                        flex: 6,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Osman Yılmaz, ID:${master.id}',
                              style: context.textTheme.bodyLarge!.copyWith(
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
                                        text: ' 4.1   ',
                                        style: context.textTheme.bodyLarge!
                                            .copyWith(
                                          color: ColorManager.black,
                                          fontSize: FontSizeManager.s14,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '(27 Reviews)',
                                        style: getLightStyle(
                                          color: ColorManager.lightGreyText,
                                          fontSize: FontSizeManager.s14,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: AppSize.s6),
                            Text(
                              'Radiator Cleaning, House Cleaning, House to House Transportation',
                              maxLines: 6,
                              overflow: TextOverflow.ellipsis,
                              style: getRegularStyle(
                                color: ColorManager.textSubtitleColor,
                                fontSize: FontSizeManager.s13,
                              ),
                            ),
                            const SizedBox(height: AppSize.s6),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  ImageAssets.location,
                                  color: ColorManager.black,
                                  height: AppSize.s14,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '35 Km ',
                                        style: getRegularStyle(
                                          color: ColorManager.black,
                                          fontSize: FontSizeManager.s14,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '(Yaklaşık 40 dk)',
                                        style: getLightStyle(
                                          color: ColorManager.lightGreyText,
                                          fontSize: FontSizeManager.s13,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                height: 30,
                width: 30,
                child: GestureDetector(
                  onTap: hide,
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 1,
                          color: Color.fromARGB((255 * 0.3).floor(), 0, 0, 0),
                        )
                      ],
                    ),
                    child: const Icon(
                      FontAwesomeIcons.xmark,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  final String text;
  const LoadingWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: ColorManager.darkPrimary,
          ),
          const SizedBox(height: 15),
          Text(
            text,
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
