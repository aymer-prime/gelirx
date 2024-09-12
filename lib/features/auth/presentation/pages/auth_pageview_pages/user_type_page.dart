import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/utils/resources/assets_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/Auth/presentation/bloc/auth_bloc.dart';
import 'package:gelirx/features/auth/presentation/widgets/user_type_widget.dart';

import 'package:gelirx/features/shared/widgets/card_label_widget.dart';

class UserTypePage extends StatelessWidget {
  final VoidCallback onContinue;
  const UserTypePage({
    super.key,
    required this.onContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s40),
          Text(
            AppStrings.welcomeToGelirx,
            style: context.textTheme.displayMedium,
          ),
          const SizedBox(height: AppSize.s60),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CardLabelWidget(label: 'Continue as:'),
                const SizedBox(height: AppSize.s16),
                SizedBox(
                  height: AppSize.s200,
                  child: Row(
                    children: [
                      UserTypeWidget(
                        label: AppStrings.master,
                        img: ImageAssets.masterIcon,
                        isSelected: context.read<AuthBloc>().state.isMaster,
                        onSelect: () {
                          context.read<AuthBloc>().add(
                                const AuthEvent.setUserType(true),
                              );
                        },
                      ),
                      const SizedBox(width: AppSize.s16),
                      UserTypeWidget(
                        label: AppStrings.user,
                        img: ImageAssets.userIcon,
                        isSelected: !context.read<AuthBloc>().state.isMaster,
                        onSelect: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEvent.setUserType(
                                false,
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s16),
          //const Expanded(child: SizedBox()),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onContinue,
              child: const Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
