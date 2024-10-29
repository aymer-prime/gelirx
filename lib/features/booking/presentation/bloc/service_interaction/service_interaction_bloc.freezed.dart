// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_interaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceInteractionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int totalStars) setStars,
    required TResult Function(String comment) setComment,
    required TResult Function(
            UserEntity? user, String masterId, String serviceId)
        addInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int totalStars)? setStars,
    TResult? Function(String comment)? setComment,
    TResult? Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int totalStars)? setStars,
    TResult Function(String comment)? setComment,
    TResult Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStars value) setStars,
    required TResult Function(_SetComment value) setComment,
    required TResult Function(_AddInteraction value) addInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStars value)? setStars,
    TResult? Function(_SetComment value)? setComment,
    TResult? Function(_AddInteraction value)? addInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStars value)? setStars,
    TResult Function(_SetComment value)? setComment,
    TResult Function(_AddInteraction value)? addInteraction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInteractionEventCopyWith<$Res> {
  factory $ServiceInteractionEventCopyWith(ServiceInteractionEvent value,
          $Res Function(ServiceInteractionEvent) then) =
      _$ServiceInteractionEventCopyWithImpl<$Res, ServiceInteractionEvent>;
}

/// @nodoc
class _$ServiceInteractionEventCopyWithImpl<$Res,
        $Val extends ServiceInteractionEvent>
    implements $ServiceInteractionEventCopyWith<$Res> {
  _$ServiceInteractionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SetStarsImplCopyWith<$Res> {
  factory _$$SetStarsImplCopyWith(
          _$SetStarsImpl value, $Res Function(_$SetStarsImpl) then) =
      __$$SetStarsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int totalStars});
}

/// @nodoc
class __$$SetStarsImplCopyWithImpl<$Res>
    extends _$ServiceInteractionEventCopyWithImpl<$Res, _$SetStarsImpl>
    implements _$$SetStarsImplCopyWith<$Res> {
  __$$SetStarsImplCopyWithImpl(
      _$SetStarsImpl _value, $Res Function(_$SetStarsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStars = null,
  }) {
    return _then(_$SetStarsImpl(
      null == totalStars
          ? _value.totalStars
          : totalStars // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetStarsImpl implements _SetStars {
  const _$SetStarsImpl(this.totalStars);

  @override
  final int totalStars;

  @override
  String toString() {
    return 'ServiceInteractionEvent.setStars(totalStars: $totalStars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStarsImpl &&
            (identical(other.totalStars, totalStars) ||
                other.totalStars == totalStars));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalStars);

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStarsImplCopyWith<_$SetStarsImpl> get copyWith =>
      __$$SetStarsImplCopyWithImpl<_$SetStarsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int totalStars) setStars,
    required TResult Function(String comment) setComment,
    required TResult Function(
            UserEntity? user, String masterId, String serviceId)
        addInteraction,
  }) {
    return setStars(totalStars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int totalStars)? setStars,
    TResult? Function(String comment)? setComment,
    TResult? Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
  }) {
    return setStars?.call(totalStars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int totalStars)? setStars,
    TResult Function(String comment)? setComment,
    TResult Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
    required TResult orElse(),
  }) {
    if (setStars != null) {
      return setStars(totalStars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStars value) setStars,
    required TResult Function(_SetComment value) setComment,
    required TResult Function(_AddInteraction value) addInteraction,
  }) {
    return setStars(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStars value)? setStars,
    TResult? Function(_SetComment value)? setComment,
    TResult? Function(_AddInteraction value)? addInteraction,
  }) {
    return setStars?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStars value)? setStars,
    TResult Function(_SetComment value)? setComment,
    TResult Function(_AddInteraction value)? addInteraction,
    required TResult orElse(),
  }) {
    if (setStars != null) {
      return setStars(this);
    }
    return orElse();
  }
}

abstract class _SetStars implements ServiceInteractionEvent {
  const factory _SetStars(final int totalStars) = _$SetStarsImpl;

  int get totalStars;

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetStarsImplCopyWith<_$SetStarsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCommentImplCopyWith<$Res> {
  factory _$$SetCommentImplCopyWith(
          _$SetCommentImpl value, $Res Function(_$SetCommentImpl) then) =
      __$$SetCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$SetCommentImplCopyWithImpl<$Res>
    extends _$ServiceInteractionEventCopyWithImpl<$Res, _$SetCommentImpl>
    implements _$$SetCommentImplCopyWith<$Res> {
  __$$SetCommentImplCopyWithImpl(
      _$SetCommentImpl _value, $Res Function(_$SetCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$SetCommentImpl(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetCommentImpl implements _SetComment {
  const _$SetCommentImpl(this.comment);

  @override
  final String comment;

  @override
  String toString() {
    return 'ServiceInteractionEvent.setComment(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCommentImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCommentImplCopyWith<_$SetCommentImpl> get copyWith =>
      __$$SetCommentImplCopyWithImpl<_$SetCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int totalStars) setStars,
    required TResult Function(String comment) setComment,
    required TResult Function(
            UserEntity? user, String masterId, String serviceId)
        addInteraction,
  }) {
    return setComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int totalStars)? setStars,
    TResult? Function(String comment)? setComment,
    TResult? Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
  }) {
    return setComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int totalStars)? setStars,
    TResult Function(String comment)? setComment,
    TResult Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
    required TResult orElse(),
  }) {
    if (setComment != null) {
      return setComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStars value) setStars,
    required TResult Function(_SetComment value) setComment,
    required TResult Function(_AddInteraction value) addInteraction,
  }) {
    return setComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStars value)? setStars,
    TResult? Function(_SetComment value)? setComment,
    TResult? Function(_AddInteraction value)? addInteraction,
  }) {
    return setComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStars value)? setStars,
    TResult Function(_SetComment value)? setComment,
    TResult Function(_AddInteraction value)? addInteraction,
    required TResult orElse(),
  }) {
    if (setComment != null) {
      return setComment(this);
    }
    return orElse();
  }
}

abstract class _SetComment implements ServiceInteractionEvent {
  const factory _SetComment(final String comment) = _$SetCommentImpl;

  String get comment;

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetCommentImplCopyWith<_$SetCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddInteractionImplCopyWith<$Res> {
  factory _$$AddInteractionImplCopyWith(_$AddInteractionImpl value,
          $Res Function(_$AddInteractionImpl) then) =
      __$$AddInteractionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEntity? user, String masterId, String serviceId});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AddInteractionImplCopyWithImpl<$Res>
    extends _$ServiceInteractionEventCopyWithImpl<$Res, _$AddInteractionImpl>
    implements _$$AddInteractionImplCopyWith<$Res> {
  __$$AddInteractionImplCopyWithImpl(
      _$AddInteractionImpl _value, $Res Function(_$AddInteractionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? masterId = null,
    Object? serviceId = null,
  }) {
    return _then(_$AddInteractionImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      null == masterId
          ? _value.masterId
          : masterId // ignore: cast_nullable_to_non_nullable
              as String,
      null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AddInteractionImpl implements _AddInteraction {
  const _$AddInteractionImpl(this.user, this.masterId, this.serviceId);

  @override
  final UserEntity? user;
  @override
  final String masterId;
  @override
  final String serviceId;

  @override
  String toString() {
    return 'ServiceInteractionEvent.addInteraction(user: $user, masterId: $masterId, serviceId: $serviceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddInteractionImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.masterId, masterId) ||
                other.masterId == masterId) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, masterId, serviceId);

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddInteractionImplCopyWith<_$AddInteractionImpl> get copyWith =>
      __$$AddInteractionImplCopyWithImpl<_$AddInteractionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int totalStars) setStars,
    required TResult Function(String comment) setComment,
    required TResult Function(
            UserEntity? user, String masterId, String serviceId)
        addInteraction,
  }) {
    return addInteraction(user, masterId, serviceId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int totalStars)? setStars,
    TResult? Function(String comment)? setComment,
    TResult? Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
  }) {
    return addInteraction?.call(user, masterId, serviceId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int totalStars)? setStars,
    TResult Function(String comment)? setComment,
    TResult Function(UserEntity? user, String masterId, String serviceId)?
        addInteraction,
    required TResult orElse(),
  }) {
    if (addInteraction != null) {
      return addInteraction(user, masterId, serviceId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetStars value) setStars,
    required TResult Function(_SetComment value) setComment,
    required TResult Function(_AddInteraction value) addInteraction,
  }) {
    return addInteraction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetStars value)? setStars,
    TResult? Function(_SetComment value)? setComment,
    TResult? Function(_AddInteraction value)? addInteraction,
  }) {
    return addInteraction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetStars value)? setStars,
    TResult Function(_SetComment value)? setComment,
    TResult Function(_AddInteraction value)? addInteraction,
    required TResult orElse(),
  }) {
    if (addInteraction != null) {
      return addInteraction(this);
    }
    return orElse();
  }
}

abstract class _AddInteraction implements ServiceInteractionEvent {
  const factory _AddInteraction(final UserEntity? user, final String masterId,
      final String serviceId) = _$AddInteractionImpl;

  UserEntity? get user;
  String get masterId;
  String get serviceId;

  /// Create a copy of ServiceInteractionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddInteractionImplCopyWith<_$AddInteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ServiceInteractionState {
  int get totalStars => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get lockInteractions => throw _privateConstructorUsedError;
  Option<Either<ApiException, Unit>> get interactionFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServiceInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceInteractionStateCopyWith<ServiceInteractionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInteractionStateCopyWith<$Res> {
  factory $ServiceInteractionStateCopyWith(ServiceInteractionState value,
          $Res Function(ServiceInteractionState) then) =
      _$ServiceInteractionStateCopyWithImpl<$Res, ServiceInteractionState>;
  @useResult
  $Res call(
      {int totalStars,
      String comment,
      bool isLoading,
      bool lockInteractions,
      Option<Either<ApiException, Unit>> interactionFailureOrSuccessOption});
}

/// @nodoc
class _$ServiceInteractionStateCopyWithImpl<$Res,
        $Val extends ServiceInteractionState>
    implements $ServiceInteractionStateCopyWith<$Res> {
  _$ServiceInteractionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStars = null,
    Object? comment = null,
    Object? isLoading = null,
    Object? lockInteractions = null,
    Object? interactionFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      totalStars: null == totalStars
          ? _value.totalStars
          : totalStars // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lockInteractions: null == lockInteractions
          ? _value.lockInteractions
          : lockInteractions // ignore: cast_nullable_to_non_nullable
              as bool,
      interactionFailureOrSuccessOption: null ==
              interactionFailureOrSuccessOption
          ? _value.interactionFailureOrSuccessOption
          : interactionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceInteractionStateImplCopyWith<$Res>
    implements $ServiceInteractionStateCopyWith<$Res> {
  factory _$$ServiceInteractionStateImplCopyWith(
          _$ServiceInteractionStateImpl value,
          $Res Function(_$ServiceInteractionStateImpl) then) =
      __$$ServiceInteractionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalStars,
      String comment,
      bool isLoading,
      bool lockInteractions,
      Option<Either<ApiException, Unit>> interactionFailureOrSuccessOption});
}

/// @nodoc
class __$$ServiceInteractionStateImplCopyWithImpl<$Res>
    extends _$ServiceInteractionStateCopyWithImpl<$Res,
        _$ServiceInteractionStateImpl>
    implements _$$ServiceInteractionStateImplCopyWith<$Res> {
  __$$ServiceInteractionStateImplCopyWithImpl(
      _$ServiceInteractionStateImpl _value,
      $Res Function(_$ServiceInteractionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalStars = null,
    Object? comment = null,
    Object? isLoading = null,
    Object? lockInteractions = null,
    Object? interactionFailureOrSuccessOption = null,
  }) {
    return _then(_$ServiceInteractionStateImpl(
      totalStars: null == totalStars
          ? _value.totalStars
          : totalStars // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      lockInteractions: null == lockInteractions
          ? _value.lockInteractions
          : lockInteractions // ignore: cast_nullable_to_non_nullable
              as bool,
      interactionFailureOrSuccessOption: null ==
              interactionFailureOrSuccessOption
          ? _value.interactionFailureOrSuccessOption
          : interactionFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ));
  }
}

/// @nodoc

class _$ServiceInteractionStateImpl implements _ServiceInteractionState {
  const _$ServiceInteractionStateImpl(
      {required this.totalStars,
      required this.comment,
      required this.isLoading,
      required this.lockInteractions,
      required this.interactionFailureOrSuccessOption});

  @override
  final int totalStars;
  @override
  final String comment;
  @override
  final bool isLoading;
  @override
  final bool lockInteractions;
  @override
  final Option<Either<ApiException, Unit>> interactionFailureOrSuccessOption;

  @override
  String toString() {
    return 'ServiceInteractionState(totalStars: $totalStars, comment: $comment, isLoading: $isLoading, lockInteractions: $lockInteractions, interactionFailureOrSuccessOption: $interactionFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInteractionStateImpl &&
            (identical(other.totalStars, totalStars) ||
                other.totalStars == totalStars) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.lockInteractions, lockInteractions) ||
                other.lockInteractions == lockInteractions) &&
            (identical(other.interactionFailureOrSuccessOption,
                    interactionFailureOrSuccessOption) ||
                other.interactionFailureOrSuccessOption ==
                    interactionFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalStars, comment, isLoading,
      lockInteractions, interactionFailureOrSuccessOption);

  /// Create a copy of ServiceInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInteractionStateImplCopyWith<_$ServiceInteractionStateImpl>
      get copyWith => __$$ServiceInteractionStateImplCopyWithImpl<
          _$ServiceInteractionStateImpl>(this, _$identity);
}

abstract class _ServiceInteractionState implements ServiceInteractionState {
  const factory _ServiceInteractionState(
      {required final int totalStars,
      required final String comment,
      required final bool isLoading,
      required final bool lockInteractions,
      required final Option<Either<ApiException, Unit>>
          interactionFailureOrSuccessOption}) = _$ServiceInteractionStateImpl;

  @override
  int get totalStars;
  @override
  String get comment;
  @override
  bool get isLoading;
  @override
  bool get lockInteractions;
  @override
  Option<Either<ApiException, Unit>> get interactionFailureOrSuccessOption;

  /// Create a copy of ServiceInteractionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceInteractionStateImplCopyWith<_$ServiceInteractionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
