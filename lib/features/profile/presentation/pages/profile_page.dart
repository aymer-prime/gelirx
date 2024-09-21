import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/auth_status/auth_status_bloc.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthStatusBloc, AuthStatusState>(
        listener: (context, state) {},
        child: Padding(
          padding: const EdgeInsets.all(
            AppPadding.p16,
          ),
          child: Column(
            children: [
              const CardLabelWidget(label: 'Profile'),
              const SizedBox(height: AppSize.s16),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(
                      AppPadding.p16,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<AuthStatusBloc>().add(
                                    const AuthStatusEvent.signedOut(),
                                  );
                            },
                            child: const Text(
                              AppStrings.logOut,
                            ),
                          ),
                        ),
                      ],
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
