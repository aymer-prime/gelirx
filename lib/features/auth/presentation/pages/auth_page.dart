import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gelirx/app/extensions/map_extensions.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_pageview_pages/login_page.dart';
import 'package:gelirx/features/auth/presentation/pages/auth_pageview_pages/otp_page.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class AuthPage extends HookWidget {
  const AuthPage({super.key});

  void nextPage(PageController controller) {
    controller.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void previousPage(PageController controller) {
    controller.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
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
                  (_) {
                    if (state.isRegister) {
                      state.isMaster
                          ? context.router.replace(
                              const MasterFormRoute(),
                            )
                          : context.router.replace(
                              const UserInfoRoute(),
                            );
                    } else {
                      state.user.fold(
                        () {},
                        (a) {
                          context.read<AuthStatusBloc>().add(
                                AuthStatusEvent.signedIn(a),
                              );
                        },
                      );
                      context.router.replace(
                        const AlternateMainRoute(),
                      );
                    }
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                // UserTypePage(
                //   onContinue: () {
                //     nextPage(pageController);
                //   },
                // ),
                LoginPage(
                  onContinue: () {
                    nextPage(pageController);
                  },
                  toPreviousPage: () {
                    previousPage(pageController);
                  },
                ),
                OtpPage(
                  toPreviousPage: () {
                    previousPage(pageController);
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
