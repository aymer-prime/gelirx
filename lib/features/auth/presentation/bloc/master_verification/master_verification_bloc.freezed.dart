// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MasterVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterVerificationEventCopyWith<$Res> {
  factory $MasterVerificationEventCopyWith(MasterVerificationEvent value,
          $Res Function(MasterVerificationEvent) then) =
      _$MasterVerificationEventCopyWithImpl<$Res, MasterVerificationEvent>;
}

/// @nodoc
class _$MasterVerificationEventCopyWithImpl<$Res,
        $Val extends MasterVerificationEvent>
    implements $MasterVerificationEventCopyWith<$Res> {
  _$MasterVerificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$MasterVerificationEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'MasterVerificationEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements MasterVerificationEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurNameChangedImplCopyWith<$Res> {
  factory _$$SurNameChangedImplCopyWith(_$SurNameChangedImpl value,
          $Res Function(_$SurNameChangedImpl) then) =
      __$$SurNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surName});
}

/// @nodoc
class __$$SurNameChangedImplCopyWithImpl<$Res>
    extends _$MasterVerificationEventCopyWithImpl<$Res, _$SurNameChangedImpl>
    implements _$$SurNameChangedImplCopyWith<$Res> {
  __$$SurNameChangedImplCopyWithImpl(
      _$SurNameChangedImpl _value, $Res Function(_$SurNameChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surName = null,
  }) {
    return _then(_$SurNameChangedImpl(
      null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SurNameChangedImpl implements _SurNameChanged {
  const _$SurNameChangedImpl(this.surName);

  @override
  final String surName;

  @override
  String toString() {
    return 'MasterVerificationEvent.surNameChanged(surName: $surName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurNameChangedImpl &&
            (identical(other.surName, surName) || other.surName == surName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surName);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurNameChangedImplCopyWith<_$SurNameChangedImpl> get copyWith =>
      __$$SurNameChangedImplCopyWithImpl<_$SurNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) {
    return surNameChanged(surName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) {
    return surNameChanged?.call(surName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) {
    if (surNameChanged != null) {
      return surNameChanged(surName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) {
    return surNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) {
    return surNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) {
    if (surNameChanged != null) {
      return surNameChanged(this);
    }
    return orElse();
  }
}

abstract class _SurNameChanged implements MasterVerificationEvent {
  const factory _SurNameChanged(final String surName) = _$SurNameChangedImpl;

  String get surName;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurNameChangedImplCopyWith<_$SurNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdChangedImplCopyWith<$Res> {
  factory _$$IdChangedImplCopyWith(
          _$IdChangedImpl value, $Res Function(_$IdChangedImpl) then) =
      __$$IdChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idNumber});
}

/// @nodoc
class __$$IdChangedImplCopyWithImpl<$Res>
    extends _$MasterVerificationEventCopyWithImpl<$Res, _$IdChangedImpl>
    implements _$$IdChangedImplCopyWith<$Res> {
  __$$IdChangedImplCopyWithImpl(
      _$IdChangedImpl _value, $Res Function(_$IdChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idNumber = null,
  }) {
    return _then(_$IdChangedImpl(
      null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IdChangedImpl implements _IdChanged {
  const _$IdChangedImpl(this.idNumber);

  @override
  final String idNumber;

  @override
  String toString() {
    return 'MasterVerificationEvent.idChanged(idNumber: $idNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdChangedImpl &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idNumber);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdChangedImplCopyWith<_$IdChangedImpl> get copyWith =>
      __$$IdChangedImplCopyWithImpl<_$IdChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) {
    return idChanged(idNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) {
    return idChanged?.call(idNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) {
    if (idChanged != null) {
      return idChanged(idNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) {
    return idChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) {
    return idChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) {
    if (idChanged != null) {
      return idChanged(this);
    }
    return orElse();
  }
}

abstract class _IdChanged implements MasterVerificationEvent {
  const factory _IdChanged(final String idNumber) = _$IdChangedImpl;

  String get idNumber;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdChangedImplCopyWith<_$IdChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BirthYearChangedImplCopyWith<$Res> {
  factory _$$BirthYearChangedImplCopyWith(_$BirthYearChangedImpl value,
          $Res Function(_$BirthYearChangedImpl) then) =
      __$$BirthYearChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String birthYear});
}

/// @nodoc
class __$$BirthYearChangedImplCopyWithImpl<$Res>
    extends _$MasterVerificationEventCopyWithImpl<$Res, _$BirthYearChangedImpl>
    implements _$$BirthYearChangedImplCopyWith<$Res> {
  __$$BirthYearChangedImplCopyWithImpl(_$BirthYearChangedImpl _value,
      $Res Function(_$BirthYearChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birthYear = null,
  }) {
    return _then(_$BirthYearChangedImpl(
      null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BirthYearChangedImpl implements _BirthYearChanged {
  const _$BirthYearChangedImpl(this.birthYear);

  @override
  final String birthYear;

  @override
  String toString() {
    return 'MasterVerificationEvent.birthYearChanged(birthYear: $birthYear)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirthYearChangedImpl &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear));
  }

  @override
  int get hashCode => Object.hash(runtimeType, birthYear);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirthYearChangedImplCopyWith<_$BirthYearChangedImpl> get copyWith =>
      __$$BirthYearChangedImplCopyWithImpl<_$BirthYearChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) {
    return birthYearChanged(birthYear);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) {
    return birthYearChanged?.call(birthYear);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) {
    if (birthYearChanged != null) {
      return birthYearChanged(birthYear);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) {
    return birthYearChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) {
    return birthYearChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) {
    if (birthYearChanged != null) {
      return birthYearChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthYearChanged implements MasterVerificationEvent {
  const factory _BirthYearChanged(final String birthYear) =
      _$BirthYearChangedImpl;

  String get birthYear;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirthYearChangedImplCopyWith<_$BirthYearChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageChangedImplCopyWith<$Res> {
  factory _$$ImageChangedImplCopyWith(
          _$ImageChangedImpl value, $Res Function(_$ImageChangedImpl) then) =
      __$$ImageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$ImageChangedImplCopyWithImpl<$Res>
    extends _$MasterVerificationEventCopyWithImpl<$Res, _$ImageChangedImpl>
    implements _$$ImageChangedImplCopyWith<$Res> {
  __$$ImageChangedImplCopyWithImpl(
      _$ImageChangedImpl _value, $Res Function(_$ImageChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImageChangedImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ImageChangedImpl implements _ImageChanged {
  const _$ImageChangedImpl(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'MasterVerificationEvent.imageChanged(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageChangedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageChangedImplCopyWith<_$ImageChangedImpl> get copyWith =>
      __$$ImageChangedImplCopyWithImpl<_$ImageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) {
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) {
    return imageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageChanged implements MasterVerificationEvent {
  const factory _ImageChanged(final File image) = _$ImageChangedImpl;

  File get image;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageChangedImplCopyWith<_$ImageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitInfoImplCopyWith<$Res> {
  factory _$$SubmitInfoImplCopyWith(
          _$SubmitInfoImpl value, $Res Function(_$SubmitInfoImpl) then) =
      __$$SubmitInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Function onSuccess});
}

/// @nodoc
class __$$SubmitInfoImplCopyWithImpl<$Res>
    extends _$MasterVerificationEventCopyWithImpl<$Res, _$SubmitInfoImpl>
    implements _$$SubmitInfoImplCopyWith<$Res> {
  __$$SubmitInfoImplCopyWithImpl(
      _$SubmitInfoImpl _value, $Res Function(_$SubmitInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccess = null,
  }) {
    return _then(_$SubmitInfoImpl(
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as Function,
    ));
  }
}

/// @nodoc

class _$SubmitInfoImpl implements _SubmitInfo {
  const _$SubmitInfoImpl(this.onSuccess);

  @override
  final Function onSuccess;

  @override
  String toString() {
    return 'MasterVerificationEvent.submitInfo(onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitInfoImpl &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccess);

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitInfoImplCopyWith<_$SubmitInfoImpl> get copyWith =>
      __$$SubmitInfoImplCopyWithImpl<_$SubmitInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String surName) surNameChanged,
    required TResult Function(String idNumber) idChanged,
    required TResult Function(String birthYear) birthYearChanged,
    required TResult Function(File image) imageChanged,
    required TResult Function(Function onSuccess) submitInfo,
  }) {
    return submitInfo(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String surName)? surNameChanged,
    TResult? Function(String idNumber)? idChanged,
    TResult? Function(String birthYear)? birthYearChanged,
    TResult? Function(File image)? imageChanged,
    TResult? Function(Function onSuccess)? submitInfo,
  }) {
    return submitInfo?.call(onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String surName)? surNameChanged,
    TResult Function(String idNumber)? idChanged,
    TResult Function(String birthYear)? birthYearChanged,
    TResult Function(File image)? imageChanged,
    TResult Function(Function onSuccess)? submitInfo,
    required TResult orElse(),
  }) {
    if (submitInfo != null) {
      return submitInfo(onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_SurNameChanged value) surNameChanged,
    required TResult Function(_IdChanged value) idChanged,
    required TResult Function(_BirthYearChanged value) birthYearChanged,
    required TResult Function(_ImageChanged value) imageChanged,
    required TResult Function(_SubmitInfo value) submitInfo,
  }) {
    return submitInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_SurNameChanged value)? surNameChanged,
    TResult? Function(_IdChanged value)? idChanged,
    TResult? Function(_BirthYearChanged value)? birthYearChanged,
    TResult? Function(_ImageChanged value)? imageChanged,
    TResult? Function(_SubmitInfo value)? submitInfo,
  }) {
    return submitInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_SurNameChanged value)? surNameChanged,
    TResult Function(_IdChanged value)? idChanged,
    TResult Function(_BirthYearChanged value)? birthYearChanged,
    TResult Function(_ImageChanged value)? imageChanged,
    TResult Function(_SubmitInfo value)? submitInfo,
    required TResult orElse(),
  }) {
    if (submitInfo != null) {
      return submitInfo(this);
    }
    return orElse();
  }
}

abstract class _SubmitInfo implements MasterVerificationEvent {
  const factory _SubmitInfo(final Function onSuccess) = _$SubmitInfoImpl;

  Function get onSuccess;

  /// Create a copy of MasterVerificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitInfoImplCopyWith<_$SubmitInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MasterVerificationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get surName => throw _privateConstructorUsedError;
  String get birthYear => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  Option<File> get userImage => throw _privateConstructorUsedError;
  Option<Either<ApiException, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of MasterVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterVerificationStateCopyWith<MasterVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterVerificationStateCopyWith<$Res> {
  factory $MasterVerificationStateCopyWith(MasterVerificationState value,
          $Res Function(MasterVerificationState) then) =
      _$MasterVerificationStateCopyWithImpl<$Res, MasterVerificationState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool showErrorMessages,
      String firstName,
      String surName,
      String birthYear,
      String idNumber,
      List<String> skills,
      Option<File> userImage,
      Option<Either<ApiException, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$MasterVerificationStateCopyWithImpl<$Res,
        $Val extends MasterVerificationState>
    implements $MasterVerificationStateCopyWith<$Res> {
  _$MasterVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showErrorMessages = null,
    Object? firstName = null,
    Object? surName = null,
    Object? birthYear = null,
    Object? idNumber = null,
    Object? skills = null,
    Object? userImage = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userImage: null == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as Option<File>,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterVerificationStateImplCopyWith<$Res>
    implements $MasterVerificationStateCopyWith<$Res> {
  factory _$$MasterVerificationStateImplCopyWith(
          _$MasterVerificationStateImpl value,
          $Res Function(_$MasterVerificationStateImpl) then) =
      __$$MasterVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool showErrorMessages,
      String firstName,
      String surName,
      String birthYear,
      String idNumber,
      List<String> skills,
      Option<File> userImage,
      Option<Either<ApiException, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$MasterVerificationStateImplCopyWithImpl<$Res>
    extends _$MasterVerificationStateCopyWithImpl<$Res,
        _$MasterVerificationStateImpl>
    implements _$$MasterVerificationStateImplCopyWith<$Res> {
  __$$MasterVerificationStateImplCopyWithImpl(
      _$MasterVerificationStateImpl _value,
      $Res Function(_$MasterVerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? showErrorMessages = null,
    Object? firstName = null,
    Object? surName = null,
    Object? birthYear = null,
    Object? idNumber = null,
    Object? skills = null,
    Object? userImage = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$MasterVerificationStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      surName: null == surName
          ? _value.surName
          : surName // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userImage: null == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as Option<File>,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ));
  }
}

/// @nodoc

class _$MasterVerificationStateImpl implements _MasterVerificationState {
  const _$MasterVerificationStateImpl(
      {required this.isLoading,
      required this.showErrorMessages,
      required this.firstName,
      required this.surName,
      required this.birthYear,
      required this.idNumber,
      required final List<String> skills,
      required this.userImage,
      required this.authFailureOrSuccessOption})
      : _skills = skills;

  @override
  final bool isLoading;
  @override
  final bool showErrorMessages;
  @override
  final String firstName;
  @override
  final String surName;
  @override
  final String birthYear;
  @override
  final String idNumber;
  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  final Option<File> userImage;
  @override
  final Option<Either<ApiException, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'MasterVerificationState(isLoading: $isLoading, showErrorMessages: $showErrorMessages, firstName: $firstName, surName: $surName, birthYear: $birthYear, idNumber: $idNumber, skills: $skills, userImage: $userImage, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterVerificationStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surName, surName) || other.surName == surName) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      showErrorMessages,
      firstName,
      surName,
      birthYear,
      idNumber,
      const DeepCollectionEquality().hash(_skills),
      userImage,
      authFailureOrSuccessOption);

  /// Create a copy of MasterVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterVerificationStateImplCopyWith<_$MasterVerificationStateImpl>
      get copyWith => __$$MasterVerificationStateImplCopyWithImpl<
          _$MasterVerificationStateImpl>(this, _$identity);
}

abstract class _MasterVerificationState implements MasterVerificationState {
  const factory _MasterVerificationState(
      {required final bool isLoading,
      required final bool showErrorMessages,
      required final String firstName,
      required final String surName,
      required final String birthYear,
      required final String idNumber,
      required final List<String> skills,
      required final Option<File> userImage,
      required final Option<Either<ApiException, Unit>>
          authFailureOrSuccessOption}) = _$MasterVerificationStateImpl;

  @override
  bool get isLoading;
  @override
  bool get showErrorMessages;
  @override
  String get firstName;
  @override
  String get surName;
  @override
  String get birthYear;
  @override
  String get idNumber;
  @override
  List<String> get skills;
  @override
  Option<File> get userImage;
  @override
  Option<Either<ApiException, Unit>> get authFailureOrSuccessOption;

  /// Create a copy of MasterVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterVerificationStateImplCopyWith<_$MasterVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
