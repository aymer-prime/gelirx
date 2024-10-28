// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MasterEvent {
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(String userId) getMasterInteractions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(String userId)? getMasterInteractions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(String userId)? getMasterInteractions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_GetMasterInteractions value)
        getMasterInteractions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_GetMasterInteractions value)? getMasterInteractions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_GetMasterInteractions value)? getMasterInteractions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterEventCopyWith<MasterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterEventCopyWith<$Res> {
  factory $MasterEventCopyWith(
          MasterEvent value, $Res Function(MasterEvent) then) =
      _$MasterEventCopyWithImpl<$Res, MasterEvent>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$MasterEventCopyWithImpl<$Res, $Val extends MasterEvent>
    implements $MasterEventCopyWith<$Res> {
  _$MasterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMasterInfoImplCopyWith<$Res>
    implements $MasterEventCopyWith<$Res> {
  factory _$$GetMasterInfoImplCopyWith(
          _$GetMasterInfoImpl value, $Res Function(_$GetMasterInfoImpl) then) =
      __$$GetMasterInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetMasterInfoImplCopyWithImpl<$Res>
    extends _$MasterEventCopyWithImpl<$Res, _$GetMasterInfoImpl>
    implements _$$GetMasterInfoImplCopyWith<$Res> {
  __$$GetMasterInfoImplCopyWithImpl(
      _$GetMasterInfoImpl _value, $Res Function(_$GetMasterInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetMasterInfoImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMasterInfoImpl implements _GetMasterInfo {
  const _$GetMasterInfoImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'MasterEvent.getMasterInfo(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMasterInfoImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMasterInfoImplCopyWith<_$GetMasterInfoImpl> get copyWith =>
      __$$GetMasterInfoImplCopyWithImpl<_$GetMasterInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(String userId) getMasterInteractions,
  }) {
    return getMasterInfo(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(String userId)? getMasterInteractions,
  }) {
    return getMasterInfo?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(String userId)? getMasterInteractions,
    required TResult orElse(),
  }) {
    if (getMasterInfo != null) {
      return getMasterInfo(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_GetMasterInteractions value)
        getMasterInteractions,
  }) {
    return getMasterInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_GetMasterInteractions value)? getMasterInteractions,
  }) {
    return getMasterInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_GetMasterInteractions value)? getMasterInteractions,
    required TResult orElse(),
  }) {
    if (getMasterInfo != null) {
      return getMasterInfo(this);
    }
    return orElse();
  }
}

abstract class _GetMasterInfo implements MasterEvent {
  const factory _GetMasterInfo(final String userId) = _$GetMasterInfoImpl;

  @override
  String get userId;

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMasterInfoImplCopyWith<_$GetMasterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMasterInteractionsImplCopyWith<$Res>
    implements $MasterEventCopyWith<$Res> {
  factory _$$GetMasterInteractionsImplCopyWith(
          _$GetMasterInteractionsImpl value,
          $Res Function(_$GetMasterInteractionsImpl) then) =
      __$$GetMasterInteractionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetMasterInteractionsImplCopyWithImpl<$Res>
    extends _$MasterEventCopyWithImpl<$Res, _$GetMasterInteractionsImpl>
    implements _$$GetMasterInteractionsImplCopyWith<$Res> {
  __$$GetMasterInteractionsImplCopyWithImpl(_$GetMasterInteractionsImpl _value,
      $Res Function(_$GetMasterInteractionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetMasterInteractionsImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMasterInteractionsImpl implements _GetMasterInteractions {
  const _$GetMasterInteractionsImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'MasterEvent.getMasterInteractions(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMasterInteractionsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMasterInteractionsImplCopyWith<_$GetMasterInteractionsImpl>
      get copyWith => __$$GetMasterInteractionsImplCopyWithImpl<
          _$GetMasterInteractionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(String userId) getMasterInteractions,
  }) {
    return getMasterInteractions(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(String userId)? getMasterInteractions,
  }) {
    return getMasterInteractions?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(String userId)? getMasterInteractions,
    required TResult orElse(),
  }) {
    if (getMasterInteractions != null) {
      return getMasterInteractions(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_GetMasterInteractions value)
        getMasterInteractions,
  }) {
    return getMasterInteractions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_GetMasterInteractions value)? getMasterInteractions,
  }) {
    return getMasterInteractions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_GetMasterInteractions value)? getMasterInteractions,
    required TResult orElse(),
  }) {
    if (getMasterInteractions != null) {
      return getMasterInteractions(this);
    }
    return orElse();
  }
}

abstract class _GetMasterInteractions implements MasterEvent {
  const factory _GetMasterInteractions(final String userId) =
      _$GetMasterInteractionsImpl;

  @override
  String get userId;

  /// Create a copy of MasterEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMasterInteractionsImplCopyWith<_$GetMasterInteractionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MasterState {
  Option<Either<ApiException, UserInfo>> get masterInfo =>
      throw _privateConstructorUsedError;
  Option<Either<ApiException, List<Interaction>>> get masterInteractions =>
      throw _privateConstructorUsedError;

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterStateCopyWith<MasterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterStateCopyWith<$Res> {
  factory $MasterStateCopyWith(
          MasterState value, $Res Function(MasterState) then) =
      _$MasterStateCopyWithImpl<$Res, MasterState>;
  @useResult
  $Res call(
      {Option<Either<ApiException, UserInfo>> masterInfo,
      Option<Either<ApiException, List<Interaction>>> masterInteractions});
}

/// @nodoc
class _$MasterStateCopyWithImpl<$Res, $Val extends MasterState>
    implements $MasterStateCopyWith<$Res> {
  _$MasterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterInfo = null,
    Object? masterInteractions = null,
  }) {
    return _then(_value.copyWith(
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, UserInfo>>,
      masterInteractions: null == masterInteractions
          ? _value.masterInteractions
          : masterInteractions // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, List<Interaction>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MasterStateImplCopyWith<$Res>
    implements $MasterStateCopyWith<$Res> {
  factory _$$MasterStateImplCopyWith(
          _$MasterStateImpl value, $Res Function(_$MasterStateImpl) then) =
      __$$MasterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiException, UserInfo>> masterInfo,
      Option<Either<ApiException, List<Interaction>>> masterInteractions});
}

/// @nodoc
class __$$MasterStateImplCopyWithImpl<$Res>
    extends _$MasterStateCopyWithImpl<$Res, _$MasterStateImpl>
    implements _$$MasterStateImplCopyWith<$Res> {
  __$$MasterStateImplCopyWithImpl(
      _$MasterStateImpl _value, $Res Function(_$MasterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterInfo = null,
    Object? masterInteractions = null,
  }) {
    return _then(_$MasterStateImpl(
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, UserInfo>>,
      masterInteractions: null == masterInteractions
          ? _value.masterInteractions
          : masterInteractions // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, List<Interaction>>>,
    ));
  }
}

/// @nodoc

class _$MasterStateImpl implements _MasterState {
  _$MasterStateImpl(
      {required this.masterInfo, required this.masterInteractions});

  @override
  final Option<Either<ApiException, UserInfo>> masterInfo;
  @override
  final Option<Either<ApiException, List<Interaction>>> masterInteractions;

  @override
  String toString() {
    return 'MasterState(masterInfo: $masterInfo, masterInteractions: $masterInteractions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterStateImpl &&
            (identical(other.masterInfo, masterInfo) ||
                other.masterInfo == masterInfo) &&
            (identical(other.masterInteractions, masterInteractions) ||
                other.masterInteractions == masterInteractions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, masterInfo, masterInteractions);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterStateImplCopyWith<_$MasterStateImpl> get copyWith =>
      __$$MasterStateImplCopyWithImpl<_$MasterStateImpl>(this, _$identity);
}

abstract class _MasterState implements MasterState {
  factory _MasterState(
      {required final Option<Either<ApiException, UserInfo>> masterInfo,
      required final Option<Either<ApiException, List<Interaction>>>
          masterInteractions}) = _$MasterStateImpl;

  @override
  Option<Either<ApiException, UserInfo>> get masterInfo;
  @override
  Option<Either<ApiException, List<Interaction>>> get masterInteractions;

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterStateImplCopyWith<_$MasterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
