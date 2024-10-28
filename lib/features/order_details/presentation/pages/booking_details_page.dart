import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/map_extensions.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/styles_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/master/presentation/widget/master_info_card.dart';
import 'package:gelirx/features/order_details/presentation/bloc/order_bloc.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';

@RoutePage()
class BookingDetailsPage extends HookWidget {
  final String masterId;
  const BookingDetailsPage({
    super.key,
    required this.masterId,
  });

  @override
  Widget build(BuildContext context) {
    final descriptionController = useTextEditingController();
    final addressController = useTextEditingController();
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: BlocProvider(
        create: (context) => getIt<OrderBloc>()
          ..add(
            OrderEvent.getMasterInfo(masterId),
          ),
        child: SafeArea(
          child: BlocListener<OrderBloc, OrderState>(
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
              state.callFailureOrSuccessOption.fold(
                () {},
                (either) {
                  either.fold(
                    (failure) {
                      Flushbar(
                        message: failure.map(
                          notModified: (_) => 'Error: 304, Not Modified',
                          unauthorized: (_) => 'Error: 401, Unauthorized',
                          badRequest: (badRequest) =>
                              badRequest.keys.stringify(),
                          unknown: (_) => 'Unknown Error',
                          noConnection: (_) => 'Error: No Connection',
                          defaultException: (defaultException) =>
                              'Error: ${defaultException.code}, ${defaultException.message}',
                        ),
                        margin: const EdgeInsets.all(6.0),
                        flushbarStyle: FlushbarStyle.FLOATING,
                        flushbarPosition: FlushbarPosition.BOTTOM,
                        borderRadius: BorderRadius.circular(12),
                        duration: const Duration(seconds: 2),
                        leftBarIndicatorColor: ColorManager.primary,
                      ).show(context);
                    },
                    (_) {},
                  );
                },
              );
            },
            child: BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                return Stack(
                  children: [
                    ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: AppSize.s10, left: AppSize.s15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const SizedBox(
                                  height: AppSize.s30,
                                  width: AppSize.s30,
                                  child: Icon(FontAwesomeIcons.arrowLeft,
                                      size: AppSize.s18),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.s10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: Text(
                            "Call a professional",
                            style: getTextStyle(AppSize.s24, FontWeight.w500,
                                ColorManager.black),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.s20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: state.masterInfo.fold(
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
                                    orElse: () => 'Something Wrong Happened!!!',
                                    defaultException: (value) => value.message,
                                  ),
                                ),
                              ),
                              (r) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MasterInfoCard(info: r),
                                  const SizedBox(height: AppSize.s40),
                                  Text(
                                    'Please fill in the required information',
                                    style: getTextStyle(
                                            FontSizeManager.s24,
                                            FontWeight.w500,
                                            ColorManager.joyColor)
                                        .copyWith(
                                      height: 1.1,
                                      letterSpacing: -0.1,
                                    ),
                                  ),
                                  const SizedBox(height: AppSize.s20),
                                  Text(
                                    '* Which service do you request?',
                                    style: getTextStyle(
                                      FontSizeManager.s14,
                                      FontWeight.w500,
                                      ColorManager.textSubtitleColor,
                                    ),
                                  ),
                                  const SizedBox(height: AppSize.s10),
                                  ...List.generate(
                                    r.services.length,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        context.read<OrderBloc>().add(
                                              OrderEvent.setSelectedService(
                                                index,
                                              ),
                                            );
                                      },
                                      child: buildRadioOption(
                                        r.services[index].name,
                                        index == state.selectedService,
                                      ),
                                    ),
                                  ).separateWith(
                                    const SizedBox(height: AppSize.s5),
                                  ),
                                  const SizedBox(height: AppSize.s20),
                                  Divider(color: ColorManager.lightGreyText),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s20),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: Text('* Explain the problem in detail',
                              style: getTextStyle(
                                  FontSizeManager.s14,
                                  FontWeight.w500,
                                  ColorManager.textSubtitleColor)),
                        ),
                        const SizedBox(height: AppSize.s10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: TextField(
                            controller: descriptionController,
                            maxLength: 750,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            maxLines: null,
                            minLines: 4,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(AppSize.s10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(AppSize.s8),
                                borderSide: const BorderSide(
                                  color: Color(0xffe0e2ea),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(AppSize.s8),
                                borderSide: const BorderSide(
                                  color: Color(0xffe0e2ea),
                                ),
                              ),
                              fillColor: const Color(0xfff5f7fa),
                              counterText: '',
                              hintStyle: getTextStyle(
                                AppSize.s14,
                                FontWeight.w300,
                                const Color(0xfff5f7fa),
                              ),
                              hintText:
                                  'Please explain the work to be done in full detail. Requests that are not explained properly or not given with all the details may be rejected by the masters.',
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: Text(
                            '* Your Address',
                            style: getTextStyle(
                              FontSizeManager.s14,
                              FontWeight.w500,
                              ColorManager.textSubtitleColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: TextField(
                            controller: addressController,
                            //maxLength: 200,
                            maxLengthEnforcement: MaxLengthEnforcement.enforced,
                            maxLines: 2,
                            minLines: null,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(AppSize.s10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(AppSize.s8),
                                borderSide:
                                    BorderSide(color: const Color(0xffe0e2ea)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(AppSize.s8),
                                  borderSide: BorderSide(
                                      color: const Color(0xffe0e2ea))),
                              fillColor: const Color(0xfff5f7fa),
                              counterText: '',
                              hintStyle: getTextStyle(
                                AppSize.s14,
                                FontWeight.w300,
                                const Color(0xfff5f7fa),
                              ),
                              hintText:
                                  'Please explain the work to be done in full detail. Requests that are not explained properly or not given with all the details may be rejected by the masters.',
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s20),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: Divider(color: ColorManager.lightGreyText),
                        ),
                        const SizedBox(height: AppSize.s20),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: Text('Upload photos of the problem',
                              style: getTextStyle(
                                  FontSizeManager.s14,
                                  FontWeight.w500,
                                  ColorManager.textSubtitleColor)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '(Upload photos if necessery)',
                                  style: getRegularStyle(
                                    color: ColorManager.lightGreyText,
                                    fontSize: FontSizeManager.s11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.s10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: AppSize.s24),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              5,
                              (index) => Flexible(
                                child: GestureDetector(
                                  onTap: () {
                                    _showPicker(context, (String path) {
                                      context.read<OrderBloc>().add(
                                            OrderEvent.setImage(
                                              index,
                                              File(path),
                                            ),
                                          );
                                    });
                                  },
                                  child: Container(
                                    height: AppSize.s62,
                                    width: AppSize.s68,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(AppSize.s5),
                                      border: Border.all(
                                          color: ColorManager.lightGreyText),
                                    ),
                                    child: AspectRatio(
                                      aspectRatio: 1,
                                      child: state.images.length >= index + 1
                                          ? Image.file(
                                              state.images[index],
                                              fit: BoxFit.cover,
                                            )
                                          : Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.camera_alt_outlined,
                                                  color: ColorManager
                                                      .textSubtitleColor,
                                                  size: AppSize.s11,
                                                ),
                                                Text(
                                                  'Select image',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: getRegularStyle(
                                                    color: ColorManager
                                                        .textSubtitleColor,
                                                    fontSize:
                                                        FontSizeManager.s9,
                                                  ),
                                                ),
                                              ],
                                            ),
                                    ),
                                  ),
                                ),
                              ),
                            ).separateWith(const SizedBox(
                              width: AppSize.s10,
                            )),
                          ),
                        ),
                        const SizedBox(height: AppSize.s120),
                      ],
                    ),
                    Positioned(
                      bottom: AppSize.s0,
                      left: AppSize.s0,
                      right: AppSize.s0,
                      child: Container(
                        padding: const EdgeInsets.all(AppSize.s24),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            top: BorderSide(
                              width: AppSize.s1,
                              color: Color(0xffe0e2ea),
                            ),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            var userEntity =
                                context.read<AuthStatusBloc>().state.maybeMap(
                                      orElse: () => null,
                                      authenticated: (authenticated) =>
                                          authenticated.user,
                                    );
                            context.read<OrderBloc>().add(
                                  OrderEvent.callMaster(
                                    userEntity,
                                    masterId,
                                    descriptionController.text,
                                    addressController.text,
                                    () {
                                      context.router
                                          .push(const OrderDetailsRoute());
                                    },
                                  ),
                                );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.joyColor,
                            padding: const EdgeInsets.symmetric(
                                vertical: AppSize.s16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Call Now",
                                  style: getTextStyle(AppSize.s16,
                                      FontWeight.w600, Colors.white)),
                              Text(" (40 min)",
                                  style: getTextStyle(
                                      AppSize.s16,
                                      FontWeight.w300,
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
        ),
      ),
    );
  }

  void _showPicker(BuildContext context, Function(String) onImageCapture) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorManager.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s32),
          topRight: Radius.circular(AppSize.s32),
        ),
      ),
      builder: (context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppPadding.p16,
            vertical: AppPadding.p8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: Container(
                  height: AppSize.s4,
                  width: AppSize.s64,
                  decoration: BoxDecoration(
                      color: ColorManager.lightPrimary,
                      borderRadius: BorderRadius.circular(
                        AppSize.s4,
                      )),
                ),
              ),
              Wrap(
                children: [
                  ListTile(
                    leading: const Icon(Icons.camera_alt_outlined),
                    title: const Text(AppStrings.photoCamera),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () async {
                      _imageFromCamera(context).then(
                        (value) => onImageCapture(value),
                      );
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.camera),
                    title: const Text(AppStrings.photoGallery),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () async {
                      _imageFromGallery(context).then(
                        (value) => onImageCapture(value),
                      );
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _imageFromGallery(BuildContext ctx) async {
    final ImagePicker _imagePicker = getIt<ImagePicker>();
    var image = await _imagePicker.pickImage(source: ImageSource.gallery);
    return image!.path;
  }

  Future<String> _imageFromCamera(BuildContext ctx) async {
    final ImagePicker _imagePicker = getIt<ImagePicker>();
    var image = await _imagePicker.pickImage(source: ImageSource.camera);
    return image!.path;
  }

  Widget buildRadioOption(String value, bool selected) {
    return Row(
      children: [
        selected
            ? Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.joyColor,
                    width: 6,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.white, // Active radio button color
                    ),
                  ),
                ))
            : Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: ColorManager.grey,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.white, // Active radio button color
                    ),
                  ),
                )),
        SizedBox(width: 10),
        Text(
          value,
          style: getTextStyle(FontSizeManager.s14, FontWeight.w400,
              ColorManager.welcomeTextColor),
        ),
      ],
    );
  }
}
