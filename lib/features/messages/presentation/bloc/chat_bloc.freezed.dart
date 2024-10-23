// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function(Either<ApiException, dynamic> chats) getChat,
    required TResult Function(int index) selectChat,
    required TResult Function(String bookingId, String message) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChats,
    TResult? Function(Either<ApiException, dynamic> chats)? getChat,
    TResult? Function(int index)? selectChat,
    TResult? Function(String bookingId, String message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function(Either<ApiException, dynamic> chats)? getChat,
    TResult Function(int index)? selectChat,
    TResult Function(String bookingId, String message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchChats value) fetchChats,
    required TResult Function(GetChat value) getChat,
    required TResult Function(SelectChat value) selectChat,
    required TResult Function(SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchChats value)? fetchChats,
    TResult? Function(GetChat value)? getChat,
    TResult? Function(SelectChat value)? selectChat,
    TResult? Function(SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchChats value)? fetchChats,
    TResult Function(GetChat value)? getChat,
    TResult Function(SelectChat value)? selectChat,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchChatsImplCopyWith<$Res> {
  factory _$$FetchChatsImplCopyWith(
          _$FetchChatsImpl value, $Res Function(_$FetchChatsImpl) then) =
      __$$FetchChatsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchChatsImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$FetchChatsImpl>
    implements _$$FetchChatsImplCopyWith<$Res> {
  __$$FetchChatsImplCopyWithImpl(
      _$FetchChatsImpl _value, $Res Function(_$FetchChatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchChatsImpl implements FetchChats {
  const _$FetchChatsImpl();

  @override
  String toString() {
    return 'ChatEvent.fetchChats()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchChatsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function(Either<ApiException, dynamic> chats) getChat,
    required TResult Function(int index) selectChat,
    required TResult Function(String bookingId, String message) sendMessage,
  }) {
    return fetchChats();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChats,
    TResult? Function(Either<ApiException, dynamic> chats)? getChat,
    TResult? Function(int index)? selectChat,
    TResult? Function(String bookingId, String message)? sendMessage,
  }) {
    return fetchChats?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function(Either<ApiException, dynamic> chats)? getChat,
    TResult Function(int index)? selectChat,
    TResult Function(String bookingId, String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchChats value) fetchChats,
    required TResult Function(GetChat value) getChat,
    required TResult Function(SelectChat value) selectChat,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return fetchChats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchChats value)? fetchChats,
    TResult? Function(GetChat value)? getChat,
    TResult? Function(SelectChat value)? selectChat,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return fetchChats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchChats value)? fetchChats,
    TResult Function(GetChat value)? getChat,
    TResult Function(SelectChat value)? selectChat,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (fetchChats != null) {
      return fetchChats(this);
    }
    return orElse();
  }
}

abstract class FetchChats implements ChatEvent {
  const factory FetchChats() = _$FetchChatsImpl;
}

/// @nodoc
abstract class _$$GetChatImplCopyWith<$Res> {
  factory _$$GetChatImplCopyWith(
          _$GetChatImpl value, $Res Function(_$GetChatImpl) then) =
      __$$GetChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<ApiException, dynamic> chats});
}

/// @nodoc
class __$$GetChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetChatImpl>
    implements _$$GetChatImplCopyWith<$Res> {
  __$$GetChatImplCopyWithImpl(
      _$GetChatImpl _value, $Res Function(_$GetChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
  }) {
    return _then(_$GetChatImpl(
      null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as Either<ApiException, dynamic>,
    ));
  }
}

/// @nodoc

class _$GetChatImpl implements GetChat {
  const _$GetChatImpl(this.chats);

  @override
  final Either<ApiException, dynamic> chats;

  @override
  String toString() {
    return 'ChatEvent.getChat(chats: $chats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatImpl &&
            (identical(other.chats, chats) || other.chats == chats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chats);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatImplCopyWith<_$GetChatImpl> get copyWith =>
      __$$GetChatImplCopyWithImpl<_$GetChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function(Either<ApiException, dynamic> chats) getChat,
    required TResult Function(int index) selectChat,
    required TResult Function(String bookingId, String message) sendMessage,
  }) {
    return getChat(chats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChats,
    TResult? Function(Either<ApiException, dynamic> chats)? getChat,
    TResult? Function(int index)? selectChat,
    TResult? Function(String bookingId, String message)? sendMessage,
  }) {
    return getChat?.call(chats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function(Either<ApiException, dynamic> chats)? getChat,
    TResult Function(int index)? selectChat,
    TResult Function(String bookingId, String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(chats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchChats value) fetchChats,
    required TResult Function(GetChat value) getChat,
    required TResult Function(SelectChat value) selectChat,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchChats value)? fetchChats,
    TResult? Function(GetChat value)? getChat,
    TResult? Function(SelectChat value)? selectChat,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchChats value)? fetchChats,
    TResult Function(GetChat value)? getChat,
    TResult Function(SelectChat value)? selectChat,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(this);
    }
    return orElse();
  }
}

abstract class GetChat implements ChatEvent {
  const factory GetChat(final Either<ApiException, dynamic> chats) =
      _$GetChatImpl;

  Either<ApiException, dynamic> get chats;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatImplCopyWith<_$GetChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectChatImplCopyWith<$Res> {
  factory _$$SelectChatImplCopyWith(
          _$SelectChatImpl value, $Res Function(_$SelectChatImpl) then) =
      __$$SelectChatImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$SelectChatImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SelectChatImpl>
    implements _$$SelectChatImplCopyWith<$Res> {
  __$$SelectChatImplCopyWithImpl(
      _$SelectChatImpl _value, $Res Function(_$SelectChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$SelectChatImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectChatImpl implements SelectChat {
  const _$SelectChatImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ChatEvent.selectChat(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectChatImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      __$$SelectChatImplCopyWithImpl<_$SelectChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function(Either<ApiException, dynamic> chats) getChat,
    required TResult Function(int index) selectChat,
    required TResult Function(String bookingId, String message) sendMessage,
  }) {
    return selectChat(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChats,
    TResult? Function(Either<ApiException, dynamic> chats)? getChat,
    TResult? Function(int index)? selectChat,
    TResult? Function(String bookingId, String message)? sendMessage,
  }) {
    return selectChat?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function(Either<ApiException, dynamic> chats)? getChat,
    TResult Function(int index)? selectChat,
    TResult Function(String bookingId, String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchChats value) fetchChats,
    required TResult Function(GetChat value) getChat,
    required TResult Function(SelectChat value) selectChat,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return selectChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchChats value)? fetchChats,
    TResult? Function(GetChat value)? getChat,
    TResult? Function(SelectChat value)? selectChat,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return selectChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchChats value)? fetchChats,
    TResult Function(GetChat value)? getChat,
    TResult Function(SelectChat value)? selectChat,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (selectChat != null) {
      return selectChat(this);
    }
    return orElse();
  }
}

abstract class SelectChat implements ChatEvent {
  const factory SelectChat(final int index) = _$SelectChatImpl;

  int get index;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectChatImplCopyWith<_$SelectChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String message});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? message = null,
  }) {
    return _then(_$SendMessageImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements SendMessage {
  const _$SendMessageImpl(this.bookingId, this.message);

  @override
  final String bookingId;
  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(bookingId: $bookingId, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, message);

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChats,
    required TResult Function(Either<ApiException, dynamic> chats) getChat,
    required TResult Function(int index) selectChat,
    required TResult Function(String bookingId, String message) sendMessage,
  }) {
    return sendMessage(bookingId, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChats,
    TResult? Function(Either<ApiException, dynamic> chats)? getChat,
    TResult? Function(int index)? selectChat,
    TResult? Function(String bookingId, String message)? sendMessage,
  }) {
    return sendMessage?.call(bookingId, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChats,
    TResult Function(Either<ApiException, dynamic> chats)? getChat,
    TResult Function(int index)? selectChat,
    TResult Function(String bookingId, String message)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(bookingId, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchChats value) fetchChats,
    required TResult Function(GetChat value) getChat,
    required TResult Function(SelectChat value) selectChat,
    required TResult Function(SendMessage value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchChats value)? fetchChats,
    TResult? Function(GetChat value)? getChat,
    TResult? Function(SelectChat value)? selectChat,
    TResult? Function(SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchChats value)? fetchChats,
    TResult Function(GetChat value)? getChat,
    TResult Function(SelectChat value)? selectChat,
    TResult Function(SendMessage value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements ChatEvent {
  const factory SendMessage(final String bookingId, final String message) =
      _$SendMessageImpl;

  String get bookingId;
  String get message;

  /// Create a copy of ChatEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  dynamic get chats => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get selectedChatIndex => throw _privateConstructorUsedError;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {bool isLoading, dynamic chats, String? error, int selectedChatIndex});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? chats = freezed,
    Object? error = freezed,
    Object? selectedChatIndex = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedChatIndex: null == selectedChatIndex
          ? _value.selectedChatIndex
          : selectedChatIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatStateImplCopyWith<$Res>
    implements $ChatStateCopyWith<$Res> {
  factory _$$ChatStateImplCopyWith(
          _$ChatStateImpl value, $Res Function(_$ChatStateImpl) then) =
      __$$ChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, dynamic chats, String? error, int selectedChatIndex});
}

/// @nodoc
class __$$ChatStateImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatStateImpl>
    implements _$$ChatStateImplCopyWith<$Res> {
  __$$ChatStateImplCopyWithImpl(
      _$ChatStateImpl _value, $Res Function(_$ChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? chats = freezed,
    Object? error = freezed,
    Object? selectedChatIndex = null,
  }) {
    return _then(_$ChatStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: freezed == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedChatIndex: null == selectedChatIndex
          ? _value.selectedChatIndex
          : selectedChatIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChatStateImpl implements _ChatState {
  const _$ChatStateImpl(
      {required this.isLoading,
      required this.chats,
      this.error,
      required this.selectedChatIndex});

  @override
  final bool isLoading;
  @override
  final dynamic chats;
  @override
  final String? error;
  @override
  final int selectedChatIndex;

  @override
  String toString() {
    return 'ChatState(isLoading: $isLoading, chats: $chats, error: $error, selectedChatIndex: $selectedChatIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.chats, chats) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectedChatIndex, selectedChatIndex) ||
                other.selectedChatIndex == selectedChatIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(chats), error, selectedChatIndex);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      __$$ChatStateImplCopyWithImpl<_$ChatStateImpl>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final bool isLoading,
      required final dynamic chats,
      final String? error,
      required final int selectedChatIndex}) = _$ChatStateImpl;

  @override
  bool get isLoading;
  @override
  dynamic get chats;
  @override
  String? get error;
  @override
  int get selectedChatIndex;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatStateImplCopyWith<_$ChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
