import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/extensions/map_extensions.dart';
import 'package:gelirx/app/injector/injection.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/user_verification/user_verification_bloc.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
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
                              const CardLabelWidget(label: 'Name'),
                              const SizedBox(height: AppSize.s16),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  hintText: 'First Name . . .',
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("[a-z]")),
                                ],
                                onChanged: (value) => context
                                    .read<UserVerificationBloc>()
                                    .add(UserVerificationEvent.firstNameChanged(
                                        value)),
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
                              const SizedBox(height: AppSize.s4),
                              TextFormField(
                                keyboardType: TextInputType.name,
                                decoration: const InputDecoration(
                                  hintText: 'SurName . . .',
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
                              Padding(
                                padding: const EdgeInsets.all(AppPadding.p16),
                                child: SizedBox(
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
                                    child: const Text(
                                      AppStrings.continueTxt,
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
