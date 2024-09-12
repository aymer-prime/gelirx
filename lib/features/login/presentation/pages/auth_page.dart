import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/features/login/presentation/bloc/login_bloc.dart';
import 'package:gelirx/features/login/presentation/pages/auth_pageview_pages/login_page.dart';
import 'package:gelirx/features/login/presentation/pages/auth_pageview_pages/master_info_page.dart';
import 'package:gelirx/features/login/presentation/pages/auth_pageview_pages/user_type_page.dart';

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
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return PageView(
            controller: pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              UserTypePage(
                onContinue: () {
                  nextPage(pageController);
                },
              ),
              LoginPage(
                toPreviousPage: () {
                  previousPage(pageController);
                },
              ),
              MasterInfoPage(
                toPreviousPage: () {
                  previousPage(pageController);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
