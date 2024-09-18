import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/app/extensions/List.dart';
import 'package:gelirx/app/network/api_exception.dart';
import 'package:gelirx/features/auth/domain/i_auth_repository.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';
import 'package:gelirx/features/home/domain/i_home_repository.dart';
import 'package:injectable/injectable.dart';

part 'master_verification_event.dart';
part 'master_verification_state.dart';
part 'master_verification_bloc.freezed.dart';

@injectable
class MasterVerificationBloc
    extends Bloc<MasterVerificationEvent, MasterVerificationState> {
  final IHomeRepository _iHomeRepository;
  final IAuthRepository _iAuthRepository;
  MasterVerificationBloc(
    this._iHomeRepository,
    this._iAuthRepository,
  ) : super(MasterVerificationState.initial()) {
    on<_GetSkills>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      var categories = await _iHomeRepository.getCategories();
      categories.fold(
        (l) => emit(
          state.copyWith(
            isLoading: false,
            allSkills: [],
          ),
        ),
        (categories) {
          final List<UserSkills> skills = [];
          for (var category in categories) {
            skills.add(
              UserSkills(skill: category, subSkill: []),
            );
          }

          emit(
            state.copyWith(
              isLoading: false,
              allSkills: skills,
            ),
          );
        },
      );
    });
    on<_GetSubSkills>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );
      var categories = await _iHomeRepository.getSubCategories(event.skillId);
      categories.fold(
        (l) => emit(
          state.copyWith(
            isLoading: false,
            allSkills: [],
          ),
        ),
        (subCategories) {
          final int skillIdex = state.allSkills.indexWhere(
            (element) => element.skill.id == event.skillId,
          );
          final skills = [...state.allSkills];
          skills[skillIdex] =
              skills[skillIdex].copyWith(subSkill: subCategories);
          emit(
            state.copyWith(
              isLoading: false,
              allSkills: skills,
            ),
          );
        },
      );
    });
    on<_SetUserSkills>(
      (event, emit) {
        emit(
          state.copyWith(
            userSkills: selectAndAddOrRemoveSubSkill(event.selectedSubSkill),
          ),
        );
      },
    );
    on<_FirstNameChanged>((event, emit) async {
      emit(state.copyWith(
        firstName: event.firstName,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_SurNameChanged>((event, emit) async {
      emit(state.copyWith(
        surName: event.surName,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_IdChanged>((event, emit) async {
      emit(state.copyWith(
        idNumber: event.idNumber,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_BirthYearChanged>((event, emit) async {
      emit(state.copyWith(
        birthYear: event.birthYear,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_ImageChanged>((event, emit) async {
      emit(state.copyWith(
        userImage: some(event.image),
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_RegisterUserImage>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));
      await state.userImage.fold(
        () async => emit(
          state.copyWith(
            isLoading: false,
            showErrorMessages: true,
          ),
        ),
        (imageFile) async {
          var result = await _iAuthRepository.registerUserImage(imageFile);
          result.fold(
            (l) {
              if (!emit.isDone) {
                emit(
                  state.copyWith(
                    isLoading: false,
                    authFailureOrSuccessOption: some(left(l)),
                  ),
                );
              }
            },
            (unit) {
              if (!emit.isDone) {
                emit(
                  state.copyWith(
                    isLoading: false,
                    authFailureOrSuccessOption: some(right(unit)),
                  ),
                );
              }
            },
          );
        },
      );
    });
    on<_RegisterUserSkills>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        authFailureOrSuccessOption: none(),
      ));
    });
    on<_RegisterUserInfo>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      var isInfoValid = infoValidate();
      List<String> userSkill = [];
      for (var userSkillItem in state.userSkills) {
        userSkill.add(userSkillItem.skill.id);
        for (var subSkill in userSkillItem.subSkill) {
          userSkill.add(subSkill.id);
        }
      }
      if (isInfoValid) {
        var result = await _iAuthRepository.registerUserInfo(
          state.firstName,
          state.surName,
          state.idNumber,
          state.birthYear,
        );
        result.fold(
          (l) {
            if (!emit.isDone) {
              emit(
                state.copyWith(
                  isLoading: false,
                  authFailureOrSuccessOption: some(left(l)),
                ),
              );
            }
          },
          (_) {
            if (!emit.isDone) {
              emit(
                state.copyWith(
                  isLoading: false,
                  authFailureOrSuccessOption: some(right(unit)),
                ),
              );
            }
          },
        );
        event.onSuccess();
      } else {
        emit(
          state.copyWith(
            isLoading: false,
            showErrorMessages: true,
          ),
        );
      }
    });
  }
  bool infoValidate() {
    var isNameValid = state.firstName.isNotEmpty;
    var isSurNameValid = state.surName.isNotEmpty;
    var isIdValid = state.idNumber.isNotEmpty;
    var isYearValid = state.birthYear.isNotEmpty;
    return (isNameValid && isSurNameValid && isIdValid && isYearValid);
  }

  List<UserSkills> selectAndAddOrRemoveSubSkill(Category selectedSubSkill) {
    var allSkills = [...state.allSkills];
    var selectedSkills = [...state.userSkills];
    // Find the skill in the first list that contains the selected subSkill
    for (var userSkillItem in allSkills) {
      if (userSkillItem.subSkill.any((sub) => sub.id == selectedSubSkill.id)) {
        // Check if the skill already exists in the second list
        final existingSkill = selectedSkills.firstWhereOrNull(
          (selectedSkill) => selectedSkill.skill.id == userSkillItem.skill.id,
        );

        if (existingSkill != null) {
          // If the skill already exists, check if the subSkill is already part of it
          final existingSubSkill = existingSkill.subSkill.firstWhereOrNull(
            (sub) => sub.id == selectedSubSkill.id,
          );

          if (existingSubSkill != null) {
            // If the subSkill is found, remove it
            var subSkill = [...existingSkill.subSkill];
            subSkill.remove(existingSubSkill);
            int existingSubSkillIndex = selectedSkills.indexOf(existingSkill);
            selectedSkills[existingSubSkillIndex] =
                existingSkill.copyWith(subSkill: subSkill);

            // **If the skill has no more subSkills, remove the entire skill from the list**
            if (subSkill.isEmpty) {
              selectedSkills.remove(selectedSkills[existingSubSkillIndex]);
            }
          } else {
            // If the subSkill is not found, add it to the existing skill
            var subSkill = [...existingSkill.subSkill];
            subSkill.add(selectedSubSkill);
            int existingSubSkillIndex = selectedSkills.indexOf(existingSkill);
            selectedSkills[existingSubSkillIndex] =
                existingSkill.copyWith(subSkill: subSkill);
          }
        } else {
          // If the skill doesn't exist in the second list, add the new skill and subSkill
          selectedSkills.add(UserSkills(
            skill: userSkillItem.skill,
            subSkill: [selectedSubSkill],
          ));
        }
        break; // Break once the subSkill has been found and added/removed
      }
    }
    return selectedSkills;
  }
}
