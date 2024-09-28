import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gelirx/features/home/domain/entities/category.dart';

part 'shared_entities.freezed.dart';

@freezed
abstract class UserSkills with _$UserSkills {
  const factory UserSkills({
    required Category skill,
    required List<Category> subSkill,
  }) = _UserSkills;
}
