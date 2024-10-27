import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/booking/domain/entities/booking_entity.dart';
import 'package:gelirx/features/booking/presentation/widgets/rating_widget.dart';
import 'package:intl/intl.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

@RoutePage()
class ServiceDetailsPage extends StatelessWidget {
  final Booking service;
  const ServiceDetailsPage({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              service.master.services.first.name,
              style: context.textTheme.headlineSmall,
            ),
            Text(
              DateFormat('dd-MM-yyyy hh:mm').format(service.sendingDate),
              style: context.textTheme.labelSmall,
            ),
          ],
        ),
        //centerTitle: false,
      ),
      body: MasterActiveServiceBody(service: service),
    );
  }
}

class MasterActiveServiceBody extends StatelessWidget {
  final Booking service;
  const MasterActiveServiceBody({
    super.key,
    required this.service,
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
                    child: Text(service.description),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      5,
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
                  const SizedBox(height: AppSize.s24),
                  Text(
                    'How Was The Service?',
                    style: getSemiBoldStyle(
                      color: ColorManager.textTitleColor,
                      fontSize: FontSizeManager.s18,
                    ),
                  ),
                  Text(
                    'Did the master work meet your expectation based on the listing?',
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: AppSize.s8),
                  const StarRatingWidget(),
                  const SizedBox(height: AppSize.s24),
                  Text(
                    'Add a Comment',
                    style: context.textTheme.bodyMedium!.copyWith(
                      color: ColorManager.joyColor,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(AppSize.s8),
                        child: const TextField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: AppPadding.p16,
                              vertical: AppPadding.p8,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(
                              horizontal: AppPadding.p24,
                            ),
                            backgroundColor: ColorManager.joyColor,
                          ),
                          child: const Text('comment'),
                        ),
                      )
                    ],
                  ),
                  //const SizedBox(height: AppSize.s8),
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
