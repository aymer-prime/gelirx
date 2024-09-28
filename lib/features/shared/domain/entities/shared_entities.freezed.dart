// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSkills {
  Category get skill => throw _privateConstructorUsedError;
  List<Category> get subSkill => throw _privateConstructorUsedError;

  /// Create a copy of UserSkills
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSkillsCopyWith<UserSkills> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSkillsCopyWith<$Res> {
  factory $UserSkillsCopyWith(
          UserSkills value, $Res Function(UserSkills) then) =
      _$UserSkillsCopyWithImpl<$Res, UserSkills>;
  @useResult
  $Res call({Category skill, List<Category> subSkill});

  $CategoryCopyWith<$Res> get skill;
}

/// @nodoc
class _$UserSkillsCopyWithImpl<$Res, $Val extends UserSkills>
    implements $UserSkillsCopyWith<$Res> {
  _$UserSkillsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSkills
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skill = null,
    Object? subSkill = null,
  }) {
    return _then(_value.copyWith(
      skill: null == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Category,
      subSkill: null == subSkill
          ? _value.subSkill
          : subSkill // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }

  /// Create a copy of UserSkills
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get skill {
    return $CategoryCopyWith<$Res>(_value.skill, (value) {
      return _then(_value.copyWith(skill: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserSkillsImplCopyWith<$Res>
    implements $UserSkillsCopyWith<$Res> {
  factory _$$UserSkillsImplCopyWith(
          _$UserSkillsImpl value, $Res Function(_$UserSkillsImpl) then) =
      __$$UserSkillsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category skill, List<Category> subSkill});

  @override
  $CategoryCopyWith<$Res> get skill;
}

/// @nodoc
class __$$UserSkillsImplCopyWithImpl<$Res>
    extends _$UserSkillsCopyWithImpl<$Res, _$UserSkillsImpl>
    implements _$$UserSkillsImplCopyWith<$Res> {
  __$$UserSkillsImplCopyWithImpl(
      _$UserSkillsImpl _value, $Res Function(_$UserSkillsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSkills
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skill = null,
    Object? subSkill = null,
  }) {
    return _then(_$UserSkillsImpl(
      skill: null == skill
          ? _value.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as Category,
      subSkill: null == subSkill
          ? _value._subSkill
          : subSkill // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$UserSkillsImpl implements _UserSkills {
  const _$UserSkillsImpl(
      {required this.skill, required final List<Category> subSkill})
      : _subSkill = subSkill;

  @override
  final Category skill;
  final List<Category> _subSkill;
  @override
  List<Category> get subSkill {
    if (_subSkill is EqualUnmodifiableListView) return _subSkill;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subSkill);
  }

  @override
  String toString() {
    return 'UserSkills(skill: $skill, subSkill: $subSkill)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSkillsImpl &&
            (identical(other.skill, skill) || other.skill == skill) &&
            const DeepCollectionEquality().equals(other._subSkill, _subSkill));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, skill, const DeepCollectionEquality().hash(_subSkill));

  /// Create a copy of UserSkills
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSkillsImplCopyWith<_$UserSkillsImpl> get copyWith =>
      __$$UserSkillsImplCopyWithImpl<_$UserSkillsImpl>(this, _$identity);
}

abstract class _UserSkills implements UserSkills {
  const factory _UserSkills(
      {required final Category skill,
      required final List<Category> subSkill}) = _$UserSkillsImpl;

  @override
  Category get skill;
  @override
  List<Category> get subSkill;

  /// Create a copy of UserSkills
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSkillsImplCopyWith<_$UserSkillsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
