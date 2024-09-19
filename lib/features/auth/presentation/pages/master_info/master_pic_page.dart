import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/extensions/map_extensions.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/master_verification/master_verification_bloc.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class MasterPicPage extends StatelessWidget {
  const MasterPicPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MasterVerificationBloc, MasterVerificationState>(
        listener: (context, state) {
          if (state.isLoading) {
            LoadingScreen.instance().showLoadingScreen(
              context: context,
              text: 'Loading . . .',
            );
          }
          if (!state.isLoading) {
            LoadingScreen.instance().hide();
          }
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  Flushbar(
                    message: failure.map(
                      notModified: (_) => 'Error: 304, Not Modified',
                      unauthorized: (_) => 'Error: 401, Unauthorized',
                      badRequest: (badRequest) => badRequest.keys.stringify(),
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
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppSize.s24),
              Center(
                child: Text(
                  'Take a Selfie',
                  style: context.textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: AppSize.s60),
              GestureDetector(
                onTap: () {
                  _showPicker(context, (String path) {
                    context
                        .read<MasterVerificationBloc>()
                        .add(MasterVerificationEvent.imageChanged(File(path)));
                  });
                },
                child: Container(
                  width: double.infinity,
                  height: AppSize.s220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorManager.textfieldFillColor,
                    border: Border.all(
                      color: ColorManager.primary,
                      width: AppSize.s2,
                    ),
                  ),
                  child: context
                      .read<MasterVerificationBloc>()
                      .state
                      .userImage
                      .fold(
                        () => const Icon(
                          Icons.person,
                          size: AppSize.s160,
                        ),
                        (userImage) => CircleAvatar(
                          backgroundImage: FileImage(
                            userImage,
                          ),
                        ),
                      ),
                ),
              ),
              if (context
                      .read<MasterVerificationBloc>()
                      .state
                      .showErrorMessages &&
                  context
                      .read<MasterVerificationBloc>()
                      .state
                      .userImage
                      .isNone())
                Text(
                  'Invalid User Image',
                  style: context.textTheme.labelSmall!.copyWith(
                    color: ColorManager.textErrorColor,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<MasterVerificationBloc>().add(
                        MasterVerificationEvent.registerUserImage(() {
                          context.router.replace(const MasterMainRoute());
                        }),
                      );
                    },
                    child: const Text(
                      AppStrings.continueTxt,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
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
}
