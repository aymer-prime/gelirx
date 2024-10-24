import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:intl/intl.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

@RoutePage()
class MasterActiveServicePage extends StatelessWidget {
  const MasterActiveServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'AC Installation',
              style: context.textTheme.headlineSmall,
            ),
            Text(
              DateFormat('dd-MM-yyyy hh:mm').format(DateTime.now()),
              style: context.textTheme.labelSmall,
            ),
          ],
        ),
        //centerTitle: false,
      ),
      body: const MasterActiveServiceBody(),
    );
  }
}

class MasterActiveServiceBody extends StatelessWidget {
  const MasterActiveServiceBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Problem Explanation:',
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: AppSize.s8),
                  Container(
                    padding: const EdgeInsets.all(AppSize.s8),
                    decoration: BoxDecoration(
                      color: ColorManager.textfieldFillColor,
                      border: Border.all(
                        color: ColorManager.textfieldBorderColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        AppSize.s12,
                      ),
                    ),
                    child: const Text(
                      'Lorem ipsum odor amet, consectetuer adipiscing elit. Per maximus odio felis lacinia magna, fermentum placerat. In leo mollis posuere consectetur donec nostra.',
                    ),
                  ),
                  const SizedBox(height: AppSize.s16),
                  Text(
                    'Location:',
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: AppSize.s8),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSize.s8),
                    decoration: BoxDecoration(
                      color: ColorManager.textfieldFillColor,
                      border: Border.all(
                        color: ColorManager.textfieldBorderColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        AppSize.s12,
                      ),
                    ),
                    child: const Text(
                        'Business Bay, Silver Tower 9 floor 904, Dubai'),
                  ),
                  const SizedBox(height: AppSize.s16),
                  Text(
                    'Problem Photos:',
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: AppSize.s8),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          3,
                          (index) => Flexible(
                            child: AspectRatio(
                              aspectRatio: 0.86,
                              child: GestureDetector(
                                onTap: () {
                                  open(context, index);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    AppSize.s10,
                                  ),
                                  child: Image.asset(
                                    ImageAssets.tesisat,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ).separateWith(
                          const SizedBox(width: AppSize.s10),
                        ),
                      ),
                      const SizedBox(height: AppSize.s8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          3,
                          (index) => Flexible(
                            child: AspectRatio(
                              aspectRatio: 0.86,
                              child: GestureDetector(
                                onTap: () {
                                  open(context, index);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    AppSize.s10,
                                  ),
                                  child: Image.asset(
                                    ImageAssets.tesisat,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ).separateWith(
                          const SizedBox(width: AppSize.s10),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppPadding.p16,
                    ),
                    child: Divider(
                      color: ColorManager.textfieldBorderColor,
                      height: AppSize.s24,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        //Spacer(),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: ColorManager.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: Color.fromARGB((255 * 0.1).floor(), 0, 0, 0),
              )
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  AppSize.s8,
                )),
                backgroundColor: ColorManager.joyColor,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.mapLocationDot),
                  SizedBox(width: AppSize.s8),
                  Text('Navigate'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void open(BuildContext context, final int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPhotoViewWrapper(
          galleryItems: List.generate(6, (index) => ImageAssets.tesisat),
          backgroundDecoration: BoxDecoration(
            color: ColorManager.blueColor,
          ),
          initialIndex: index,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class GalleryPhotoViewWrapper extends StatefulWidget {
  GalleryPhotoViewWrapper({
    super.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    required this.galleryItems,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<String> galleryItems;
  final Axis scrollDirection;

  @override
  State<StatefulWidget> createState() {
    return _GalleryPhotoViewWrapperState();
  }
}

class _GalleryPhotoViewWrapperState extends State<GalleryPhotoViewWrapper> {
  late int currentIndex = widget.initialIndex;

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: widget.backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: widget.galleryItems.length,
              loadingBuilder: widget.loadingBuilder,
              backgroundDecoration: widget.backgroundDecoration,
              pageController: widget.pageController,
              onPageChanged: onPageChanged,
              scrollDirection: widget.scrollDirection,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Image ${currentIndex + 1}",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  decoration: null,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final String item = widget.galleryItems[index];
    return PhotoViewGalleryPageOptions(
      imageProvider: AssetImage(item),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(tag: item),
    );
  }
}
