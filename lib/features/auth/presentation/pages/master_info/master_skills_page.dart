import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/extensions/context.dart';
import 'package:gelirx/app/extensions/map_extensions.dart';
import 'package:gelirx/app/navigation/app_router.dart';
import 'package:gelirx/app/utils/resources/color_manager.dart';
import 'package:gelirx/app/utils/resources/strings_manager.dart';
import 'package:gelirx/app/utils/resources/values_manager.dart';
import 'package:gelirx/features/auth/presentation/bloc/master_verification/master_verification_bloc.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/shared/domain/entities/shared_entities.dart';
import 'package:gelirx/features/shared/widgets/card_label_widget.dart';
import 'package:gelirx/features/shared/widgets/dialogs/loading_screen.dart';

@RoutePage()
class MasterSkillsPage extends StatelessWidget {
  const MasterSkillsPage({
    super.key,
  });

  bool isSkillSelected(List<UserSkills> selectedSkills, Category skillToCheck) {
    return selectedSkills.any(
      (userSkill) => userSkill.subSkill
          .any((userSkillItem) => userSkillItem.id == skillToCheck.id),
    );
  }

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
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSize.s24),
              Center(
                child: Text(
                  'Choose Your Skills',
                  style: context.textTheme.displayMedium,
                ),
              ),
              const SizedBox(height: AppSize.s24),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p16,
                ),
                child: Column(
                  children: [
                    const CardLabelWidget(label: 'Your Skills'),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: AppMargin.m16,
                        vertical: AppMargin.m8,
                      ),
                      padding: const EdgeInsets.all(AppPadding.p8),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorManager.textfieldFillColor,
                        borderRadius: BorderRadius.circular(AppSize.s8),
                        border: Border.all(
                            color: ColorManager.textfieldBorderColor),
                      ),
                      child: context
                              .read<MasterVerificationBloc>()
                              .state
                              .userSkills
                              .isEmpty
                          ? const Text('you must choose at least one skill')
                          : Wrap(
                              children: context
                                  .read<MasterVerificationBloc>()
                                  .state
                                  .userSkills
                                  .map(
                                    (e) => Container(
                                      padding:
                                          const EdgeInsets.all(AppPadding.p6),
                                      margin:
                                          const EdgeInsets.all(AppMargin.m4),
                                      decoration: BoxDecoration(
                                        color: ColorManager.white,
                                        border: Border.all(
                                          color:
                                              ColorManager.textfieldBorderColor,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          AppSize.s12,
                                        ),
                                      ),
                                      child: Wrap(
                                        children: [
                                          Text(
                                            '${e.skill.name}: ',
                                            style:
                                                context.textTheme.labelMedium,
                                          ),
                                          ...e.subSkill
                                              .map(
                                                (sub) => Text(
                                                  sub.name,
                                                  style: context
                                                      .textTheme.labelSmall,
                                                ),
                                              )
                                              .toList()
                                              .separateWith(Text(
                                                ', ',
                                                style: context
                                                    .textTheme.labelSmall,
                                              ))
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                    ),
                    SizedBox(
                      height: AppSize.s48.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<MasterVerificationBloc>().add(
                              MasterVerificationEvent.registerUserSkills(() {
                            //context.router.replace(const MasterPicRoute());
                            context.router.replace(const AlternateMainRoute());
                          }));
                        },
                        child: const Text(
                          AppStrings.continueTxt,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSize.s16),
                    const CardLabelWidget(label: 'Skills'),
                    const SizedBox(height: AppSize.s16),
                    context
                            .read<MasterVerificationBloc>()
                            .state
                            .allSkills
                            .isEmpty
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Column(
                            children: [
                              ...context
                                  .read<MasterVerificationBloc>()
                                  .state
                                  .allSkills
                                  .map(
                                    (userSkill) => ExpansionTile(
                                      onExpansionChanged: (value) {
                                        if (value &&
                                            userSkill.subSkill.isEmpty) {
                                          context
                                              .read<MasterVerificationBloc>()
                                              .add(
                                                MasterVerificationEvent
                                                    .getSubSkills(
                                                        userSkill.skill.id),
                                              );
                                        }
                                      },
                                      title: SizedBox(
                                        child: Text(userSkill.skill.name),
                                      ),
                                      children: userSkill.subSkill.isEmpty
                                          ? [const CircularProgressIndicator()]
                                          : [
                                              ...userSkill.subSkill.map(
                                                (subSkill) => Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: AppPadding.p32,
                                                  ),
                                                  child: SkillWidget(
                                                    isSelected: isSkillSelected(
                                                      context
                                                          .read<
                                                              MasterVerificationBloc>()
                                                          .state
                                                          .userSkills,
                                                      subSkill,
                                                    ),
                                                    skillName: subSkill.name,
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              MasterVerificationBloc>()
                                                          .add(
                                                            MasterVerificationEvent
                                                                .setUserSkills(
                                                              subSkill,
                                                            ),
                                                          );
                                                    },
                                                  ),
                                                ),
                                              )
                                            ].separateWith(
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: AppPadding.p32,
                                                ),
                                                child: Divider(
                                                  thickness: AppSize.s1,
                                                  color: ColorManager
                                                      .textfieldBorderColor,
                                                ),
                                              ),
                                            ),
                                    ),
                                  )
                            ].separateWith(
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: AppPadding.p32,
                                ),
                                child: Divider(
                                  thickness: AppSize.s1,
                                  color: ColorManager.textfieldBorderColor,
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}

class SkillWidget extends StatelessWidget {
  final bool isSelected;
  final String skillName;
  final VoidCallback onPressed;
  const SkillWidget({
    super.key,
    required this.isSelected,
    required this.skillName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.textfieldFillColor,
        borderRadius: BorderRadius.circular(AppSize.s8),
        border: Border.all(color: ColorManager.textfieldBorderColor),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: onPressed,
            leading: (isSelected)
                ? Icon(
                    Icons.check_circle_rounded,
                    color: ColorManager.primary,
                  )
                : Icon(
                    Icons.circle_outlined,
                    color: ColorManager.textTitleColor,
                  ),
            title: Text(skillName),
          ),
        ],
      ),
    );
  }
}
