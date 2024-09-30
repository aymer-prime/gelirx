import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/extensions/map_extensions.dart';
import 'package:gelirx/app/extensions/string.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/font_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/user_verification/user_verification_bloc.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<UserVerificationBloc>(),
          child: BlocConsumer<UserVerificationBloc, UserVerificationState>(
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
                    (_) {
                      context.router.replace(const AlternateMainRoute());
                    },
                  );
                },
              );
            },
            builder: (context, state) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: context.screenSize.height,
                  child: Form(
                    autovalidateMode: context
                            .read<UserVerificationBloc>()
                            .state
                            .showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: AppSize.s90.h),
                        Center(
                          child: SvgPicture.asset(ImageAssets.logoPrimary),
                        ),
                        SizedBox(height: AppSize.s86.h),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppPadding.p20.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'The Last Step',
                                style: context.textTheme.displayMedium,
                              ),
                              SizedBox(height: AppSize.s54.h),
                              Text(
                                'Name',
                                style: context.textTheme.labelLarge!.copyWith(
                                  fontSize: FontSizeManager.s15,
                                  letterSpacing: FontSizeManager.s15 * -0.01,
                                ),
                              ),
                              SizedBox(height: AppSize.s8.h),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  fillColor: ColorManager.textfieldNumFillColor,
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("[a-z]")),
                                ],
                                onChanged: (value) => context
                                    .read<UserVerificationBloc>()
                                    .add(
                                      UserVerificationEvent.firstNameChanged(
                                          value),
                                    ),
                                validator: (_) {
                                  var firstName = context
                                      .read<UserVerificationBloc>()
                                      .state
                                      .firstName;
                                  if (firstName.isEmpty) {
                                    return 'Invalid Name';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: AppSize.s20.h),
                              Text(
                                'Surname',
                                style: context.textTheme.labelLarge!.copyWith(
                                  fontSize: FontSizeManager.s15,
                                  letterSpacing: FontSizeManager.s15 * -0.01,
                                ),
                              ),
                              SizedBox(height: AppSize.s8.h),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: 'SurName',
                                  fillColor: ColorManager.textfieldNumFillColor,
                                ),
                                onChanged: (value) => context
                                    .read<UserVerificationBloc>()
                                    .add(UserVerificationEvent.surNameChanged(
                                        value)),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("[a-z]")),
                                ],
                                validator: (_) {
                                  var surname = context
                                      .read<UserVerificationBloc>()
                                      .state
                                      .surName;
                                  if (surname.isEmpty) {
                                    return 'Invalid Surname';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              SizedBox(height: AppSize.s20.h),
                              Text(
                                'E-mail Address',
                                style: context.textTheme.labelLarge!.copyWith(
                                  fontSize: FontSizeManager.s15,
                                  letterSpacing: FontSizeManager.s15 * -0.01,
                                ),
                              ),
                              SizedBox(height: AppSize.s8.h),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'E-mail',
                                  fillColor: ColorManager.textfieldNumFillColor,
                                ),
                                validator: (_) {
                                  bool? valid = _?.isValidEmail();
                                  if (valid == null) {
                                    return null;
                                  }
                                  if (!valid) {
                                    return 'Invalid E-main Address';
                                  } else {
                                    return null;
                                  }
                                },
                              ),
                              const SizedBox(height: AppSize.s60),
                              SizedBox(
                                height: AppSize.s48,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.read<UserVerificationBloc>().add(
                                          UserVerificationEvent
                                              .registerUserInfo(
                                            () {},
                                          ),
                                        );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0.0,
                                    backgroundColor:
                                        ColorManager.textfieldColor,
                                  ),
                                  child: Text(
                                    AppStrings.continueTxt,
                                    style:
                                        context.textTheme.titleLarge!.copyWith(
                                      fontSize: FontSizeManager.s15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
