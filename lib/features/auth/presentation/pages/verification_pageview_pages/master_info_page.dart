import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/master_verification/master_verification_bloc.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import 'package:image_picker/image_picker.dart';

class MasterInfoPage extends StatelessWidget {
  final VoidCallback toNextPage;
  const MasterInfoPage({
    super.key,
    required this.toNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode:
          context.read<MasterVerificationBloc>().state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s24),
          Center(
            child: Text(
              'Enter Your Info',
              style: context.textTheme.displayMedium,
            ),
          ),
          const SizedBox(height: AppSize.s24),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _showPicker(context);
                  },
                  child: Container(
                    width: AppSize.s100,
                    height: AppSize.s100,
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
                            size: AppSize.s80,
                          ),
                          (_) => const Icon(
                            Icons.person,
                            size: AppSize.s80,
                          ),
                        ),
                  ),
                ),
                const CardLabelWidget(label: 'Name'),
                const SizedBox(height: AppSize.s16),
                Row(
                  children: [
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'First Name . . .',
                        ),
                        onChanged: (value) => context
                            .read<MasterVerificationBloc>()
                            .add(MasterVerificationEvent.firstNameChanged(
                                value)),
                        validator: (_) {
                          var firstName = context
                              .read<MasterVerificationBloc>()
                              .state
                              .firstName;
                          if (firstName.isEmpty) {
                            return 'Invalid Name';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: AppSize.s8),
                    Flexible(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Sur Name . . .',
                        ),
                        onChanged: (value) => context
                            .read<MasterVerificationBloc>()
                            .add(MasterVerificationEvent.surNameChanged(value)),
                        validator: (_) {
                          var surname = context
                              .read<MasterVerificationBloc>()
                              .state
                              .surName;
                          if (surname.isEmpty) {
                            return 'Invalid Id Number';
                          } else {
                            return null;
                          }
                        },
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
                const CardLabelWidget(label: 'Id Number'),
                const SizedBox(height: AppSize.s16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'ID Number . . .',
                  ),
                  onChanged: (value) => context
                      .read<MasterVerificationBloc>()
                      .add(MasterVerificationEvent.idChanged(value)),
                  validator: (_) {
                    var idNum =
                        context.read<MasterVerificationBloc>().state.idNumber;
                    if (idNum.isEmpty) {
                      return 'Invalid SurName';
                    } else {
                      return null;
                    }
                  },
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
                const CardLabelWidget(label: 'Year of Birth'),
                const SizedBox(height: AppSize.s16),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Year of Birth . . .',
                  ),
                  onChanged: (value) => context
                      .read<MasterVerificationBloc>()
                      .add(MasterVerificationEvent.birthYearChanged(value)),
                  validator: (_) {
                    var birthYear =
                        context.read<MasterVerificationBloc>().state.birthYear;
                    if (birthYear.isEmpty || birthYear.length < 4) {
                      return 'Invalid Year of birth';
                    } else {
                      return null;
                    }
                  },
                ),
              ],
            ),
          ),
          const Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.read<MasterVerificationBloc>().add(
                        MasterVerificationEvent.submitInfo(toNextPage),
                      );
                },
                child: const Text(
                  AppStrings.continueTxt,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorManager.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSize.s32),
          topRight: Radius.circular(AppSize.s32),
        ),
      ),
      builder: (context) => Padding(
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
                  leading: const Icon(Icons.camera),
                  title: const Text(AppStrings.photoGallery),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    _imageFromGallery();
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.camera_alt_outlined),
                  title: const Text(AppStrings.photoCamera),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    _imageFromCamera();
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  _imageFromGallery() async {
    final ImagePicker _imagePicker = getIt<ImagePicker>();
    var image = await _imagePicker.pickImage(source: ImageSource.gallery);
    //_viewModel.setprofilePicture(File(image?.path ?? ''));
  }

  _imageFromCamera() async {
    final ImagePicker _imagePicker = getIt<ImagePicker>();
    var image = await _imagePicker.pickImage(source: ImageSource.camera);
    //_viewModel.setprofilePicture(File(image?.path ?? ''));
  }
}
