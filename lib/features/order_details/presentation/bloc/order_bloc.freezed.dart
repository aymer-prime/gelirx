// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(int index) setSelectedService,
    required TResult Function(int index, File image) setImage,
    required TResult Function(UserEntity? user, String masterId,
            String description, String address, VoidCallback onSuccess)
        callMaster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(int index)? setSelectedService,
    TResult? Function(int index, File image)? setImage,
    TResult? Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(int index)? setSelectedService,
    TResult Function(int index, File image)? setImage,
    TResult Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_SetSelectedService value) setSelectedService,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_CallMaster value) callMaster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_SetSelectedService value)? setSelectedService,
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_CallMaster value)? callMaster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_SetSelectedService value)? setSelectedService,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_CallMaster value)? callMaster,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMasterInfoImplCopyWith<$Res> {
  factory _$$GetMasterInfoImplCopyWith(
          _$GetMasterInfoImpl value, $Res Function(_$GetMasterInfoImpl) then) =
      __$$GetMasterInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetMasterInfoImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$GetMasterInfoImpl>
    implements _$$GetMasterInfoImplCopyWith<$Res> {
  __$$GetMasterInfoImplCopyWithImpl(
      _$GetMasterInfoImpl _value, $Res Function(_$GetMasterInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
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
    return 'OrderEvent.getMasterInfo(userId: $userId)';
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

  /// Create a copy of OrderEvent
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
    required TResult Function(int index) setSelectedService,
    required TResult Function(int index, File image) setImage,
    required TResult Function(UserEntity? user, String masterId,
            String description, String address, VoidCallback onSuccess)
        callMaster,
  }) {
    return getMasterInfo(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(int index)? setSelectedService,
    TResult? Function(int index, File image)? setImage,
    TResult? Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
  }) {
    return getMasterInfo?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(int index)? setSelectedService,
    TResult Function(int index, File image)? setImage,
    TResult Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
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
    required TResult Function(_SetSelectedService value) setSelectedService,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_CallMaster value) callMaster,
  }) {
    return getMasterInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_SetSelectedService value)? setSelectedService,
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_CallMaster value)? callMaster,
  }) {
    return getMasterInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_SetSelectedService value)? setSelectedService,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_CallMaster value)? callMaster,
    required TResult orElse(),
  }) {
    if (getMasterInfo != null) {
      return getMasterInfo(this);
    }
    return orElse();
  }
}

abstract class _GetMasterInfo implements OrderEvent {
  const factory _GetMasterInfo(final String userId) = _$GetMasterInfoImpl;

  String get userId;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMasterInfoImplCopyWith<_$GetMasterInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedServiceImplCopyWith<$Res> {
  factory _$$SetSelectedServiceImplCopyWith(_$SetSelectedServiceImpl value,
          $Res Function(_$SetSelectedServiceImpl) then) =
      __$$SetSelectedServiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SetSelectedServiceImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SetSelectedServiceImpl>
    implements _$$SetSelectedServiceImplCopyWith<$Res> {
  __$$SetSelectedServiceImplCopyWithImpl(_$SetSelectedServiceImpl _value,
      $Res Function(_$SetSelectedServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SetSelectedServiceImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetSelectedServiceImpl implements _SetSelectedService {
  const _$SetSelectedServiceImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OrderEvent.setSelectedService(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedServiceImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedServiceImplCopyWith<_$SetSelectedServiceImpl> get copyWith =>
      __$$SetSelectedServiceImplCopyWithImpl<_$SetSelectedServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(int index) setSelectedService,
    required TResult Function(int index, File image) setImage,
    required TResult Function(UserEntity? user, String masterId,
            String description, String address, VoidCallback onSuccess)
        callMaster,
  }) {
    return setSelectedService(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(int index)? setSelectedService,
    TResult? Function(int index, File image)? setImage,
    TResult? Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
  }) {
    return setSelectedService?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(int index)? setSelectedService,
    TResult Function(int index, File image)? setImage,
    TResult Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
    required TResult orElse(),
  }) {
    if (setSelectedService != null) {
      return setSelectedService(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_SetSelectedService value) setSelectedService,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_CallMaster value) callMaster,
  }) {
    return setSelectedService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_SetSelectedService value)? setSelectedService,
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_CallMaster value)? callMaster,
  }) {
    return setSelectedService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_SetSelectedService value)? setSelectedService,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_CallMaster value)? callMaster,
    required TResult orElse(),
  }) {
    if (setSelectedService != null) {
      return setSelectedService(this);
    }
    return orElse();
  }
}

abstract class _SetSelectedService implements OrderEvent {
  const factory _SetSelectedService(final int index) = _$SetSelectedServiceImpl;

  int get index;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSelectedServiceImplCopyWith<_$SetSelectedServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetImageImplCopyWith<$Res> {
  factory _$$SetImageImplCopyWith(
          _$SetImageImpl value, $Res Function(_$SetImageImpl) then) =
      __$$SetImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, File image});
}

/// @nodoc
class __$$SetImageImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SetImageImpl>
    implements _$$SetImageImplCopyWith<$Res> {
  __$$SetImageImplCopyWithImpl(
      _$SetImageImpl _value, $Res Function(_$SetImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? image = null,
  }) {
    return _then(_$SetImageImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$SetImageImpl implements _SetImage {
  const _$SetImageImpl(this.index, this.image);

  @override
  final int index;
  @override
  final File image;

  @override
  String toString() {
    return 'OrderEvent.setImage(index: $index, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImageImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, image);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImageImplCopyWith<_$SetImageImpl> get copyWith =>
      __$$SetImageImplCopyWithImpl<_$SetImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(int index) setSelectedService,
    required TResult Function(int index, File image) setImage,
    required TResult Function(UserEntity? user, String masterId,
            String description, String address, VoidCallback onSuccess)
        callMaster,
  }) {
    return setImage(index, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(int index)? setSelectedService,
    TResult? Function(int index, File image)? setImage,
    TResult? Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
  }) {
    return setImage?.call(index, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(int index)? setSelectedService,
    TResult Function(int index, File image)? setImage,
    TResult Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(index, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_SetSelectedService value) setSelectedService,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_CallMaster value) callMaster,
  }) {
    return setImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_SetSelectedService value)? setSelectedService,
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_CallMaster value)? callMaster,
  }) {
    return setImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_SetSelectedService value)? setSelectedService,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_CallMaster value)? callMaster,
    required TResult orElse(),
  }) {
    if (setImage != null) {
      return setImage(this);
    }
    return orElse();
  }
}

abstract class _SetImage implements OrderEvent {
  const factory _SetImage(final int index, final File image) = _$SetImageImpl;

  int get index;
  File get image;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetImageImplCopyWith<_$SetImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CallMasterImplCopyWith<$Res> {
  factory _$$CallMasterImplCopyWith(
          _$CallMasterImpl value, $Res Function(_$CallMasterImpl) then) =
      __$$CallMasterImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserEntity? user,
      String masterId,
      String description,
      String address,
      VoidCallback onSuccess});

  $UserEntityCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CallMasterImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CallMasterImpl>
    implements _$$CallMasterImplCopyWith<$Res> {
  __$$CallMasterImplCopyWithImpl(
      _$CallMasterImpl _value, $Res Function(_$CallMasterImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? masterId = null,
    Object? description = null,
    Object? address = null,
    Object? onSuccess = null,
  }) {
    return _then(_$CallMasterImpl(
      freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      null == masterId
          ? _value.masterId
          : masterId // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }

  /// Create a copy of OrderEvent
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

class _$CallMasterImpl implements _CallMaster {
  const _$CallMasterImpl(
      this.user, this.masterId, this.description, this.address, this.onSuccess);

  @override
  final UserEntity? user;
  @override
  final String masterId;
//String categoryId,
  @override
  final String description;
  @override
  final String address;
//Location location,
//List<File> images,
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'OrderEvent.callMaster(user: $user, masterId: $masterId, description: $description, address: $address, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallMasterImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.masterId, masterId) ||
                other.masterId == masterId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, masterId, description, address, onSuccess);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CallMasterImplCopyWith<_$CallMasterImpl> get copyWith =>
      __$$CallMasterImplCopyWithImpl<_$CallMasterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getMasterInfo,
    required TResult Function(int index) setSelectedService,
    required TResult Function(int index, File image) setImage,
    required TResult Function(UserEntity? user, String masterId,
            String description, String address, VoidCallback onSuccess)
        callMaster,
  }) {
    return callMaster(user, masterId, description, address, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getMasterInfo,
    TResult? Function(int index)? setSelectedService,
    TResult? Function(int index, File image)? setImage,
    TResult? Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
  }) {
    return callMaster?.call(user, masterId, description, address, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getMasterInfo,
    TResult Function(int index)? setSelectedService,
    TResult Function(int index, File image)? setImage,
    TResult Function(UserEntity? user, String masterId, String description,
            String address, VoidCallback onSuccess)?
        callMaster,
    required TResult orElse(),
  }) {
    if (callMaster != null) {
      return callMaster(user, masterId, description, address, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetMasterInfo value) getMasterInfo,
    required TResult Function(_SetSelectedService value) setSelectedService,
    required TResult Function(_SetImage value) setImage,
    required TResult Function(_CallMaster value) callMaster,
  }) {
    return callMaster(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetMasterInfo value)? getMasterInfo,
    TResult? Function(_SetSelectedService value)? setSelectedService,
    TResult? Function(_SetImage value)? setImage,
    TResult? Function(_CallMaster value)? callMaster,
  }) {
    return callMaster?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetMasterInfo value)? getMasterInfo,
    TResult Function(_SetSelectedService value)? setSelectedService,
    TResult Function(_SetImage value)? setImage,
    TResult Function(_CallMaster value)? callMaster,
    required TResult orElse(),
  }) {
    if (callMaster != null) {
      return callMaster(this);
    }
    return orElse();
  }
}

abstract class _CallMaster implements OrderEvent {
  const factory _CallMaster(
      final UserEntity? user,
      final String masterId,
      final String description,
      final String address,
      final VoidCallback onSuccess) = _$CallMasterImpl;

  UserEntity? get user;
  String get masterId; //String categoryId,
  String get description;
  String get address; //Location location,
//List<File> images,
  VoidCallback get onSuccess;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CallMasterImplCopyWith<_$CallMasterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiException, UserInfo>> get masterInfo =>
      throw _privateConstructorUsedError;
  int get selectedService => throw _privateConstructorUsedError;
  String get problemDetails => throw _privateConstructorUsedError;
  List<File> get images => throw _privateConstructorUsedError;
  Option<Either<ApiException, Unit>> get callFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiException, UserInfo>> masterInfo,
      int selectedService,
      String problemDetails,
      List<File> images,
      Option<Either<ApiException, Unit>> callFailureOrSuccessOption});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? masterInfo = null,
    Object? selectedService = null,
    Object? problemDetails = null,
    Object? images = null,
    Object? callFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, UserInfo>>,
      selectedService: null == selectedService
          ? _value.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as int,
      problemDetails: null == problemDetails
          ? _value.problemDetails
          : problemDetails // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      callFailureOrSuccessOption: null == callFailureOrSuccessOption
          ? _value.callFailureOrSuccessOption
          : callFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiException, UserInfo>> masterInfo,
      int selectedService,
      String problemDetails,
      List<File> images,
      Option<Either<ApiException, Unit>> callFailureOrSuccessOption});
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? masterInfo = null,
    Object? selectedService = null,
    Object? problemDetails = null,
    Object? images = null,
    Object? callFailureOrSuccessOption = null,
  }) {
    return _then(_$OrderStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      masterInfo: null == masterInfo
          ? _value.masterInfo
          : masterInfo // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, UserInfo>>,
      selectedService: null == selectedService
          ? _value.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as int,
      problemDetails: null == problemDetails
          ? _value.problemDetails
          : problemDetails // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      callFailureOrSuccessOption: null == callFailureOrSuccessOption
          ? _value.callFailureOrSuccessOption
          : callFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiException, Unit>>,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl implements _OrderState {
  _$OrderStateImpl(
      {required this.isLoading,
      required this.masterInfo,
      required this.selectedService,
      required this.problemDetails,
      required final List<File> images,
      required this.callFailureOrSuccessOption})
      : _images = images;

  @override
  final bool isLoading;
  @override
  final Option<Either<ApiException, UserInfo>> masterInfo;
  @override
  final int selectedService;
  @override
  final String problemDetails;
  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Option<Either<ApiException, Unit>> callFailureOrSuccessOption;

  @override
  String toString() {
    return 'OrderState(isLoading: $isLoading, masterInfo: $masterInfo, selectedService: $selectedService, problemDetails: $problemDetails, images: $images, callFailureOrSuccessOption: $callFailureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.masterInfo, masterInfo) ||
                other.masterInfo == masterInfo) &&
            (identical(other.selectedService, selectedService) ||
                other.selectedService == selectedService) &&
            (identical(other.problemDetails, problemDetails) ||
                other.problemDetails == problemDetails) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.callFailureOrSuccessOption,
                    callFailureOrSuccessOption) ||
                other.callFailureOrSuccessOption ==
                    callFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      masterInfo,
      selectedService,
      problemDetails,
      const DeepCollectionEquality().hash(_images),
      callFailureOrSuccessOption);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  factory _OrderState(
      {required final bool isLoading,
      required final Option<Either<ApiException, UserInfo>> masterInfo,
      required final int selectedService,
      required final String problemDetails,
      required final List<File> images,
      required final Option<Either<ApiException, Unit>>
          callFailureOrSuccessOption}) = _$OrderStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<ApiException, UserInfo>> get masterInfo;
  @override
  int get selectedService;
  @override
  String get problemDetails;
  @override
  List<File> get images;
  @override
  Option<Either<ApiException, Unit>> get callFailureOrSuccessOption;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
