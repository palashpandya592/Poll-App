// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_poll_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePollEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() savePoll,
    required TResult Function() addChoice,
    required TResult Function() enterQue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? savePoll,
    TResult? Function()? addChoice,
    TResult? Function()? enterQue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? savePoll,
    TResult Function()? addChoice,
    TResult Function()? enterQue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePoll value) savePoll,
    required TResult Function(AddChoice value) addChoice,
    required TResult Function(EnterQue value) enterQue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePoll value)? savePoll,
    TResult? Function(AddChoice value)? addChoice,
    TResult? Function(EnterQue value)? enterQue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePoll value)? savePoll,
    TResult Function(AddChoice value)? addChoice,
    TResult Function(EnterQue value)? enterQue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePollEventCopyWith<$Res> {
  factory $CreatePollEventCopyWith(
          CreatePollEvent value, $Res Function(CreatePollEvent) then) =
      _$CreatePollEventCopyWithImpl<$Res, CreatePollEvent>;
}

/// @nodoc
class _$CreatePollEventCopyWithImpl<$Res, $Val extends CreatePollEvent>
    implements $CreatePollEventCopyWith<$Res> {
  _$CreatePollEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SavePollImplCopyWith<$Res> {
  factory _$$SavePollImplCopyWith(
          _$SavePollImpl value, $Res Function(_$SavePollImpl) then) =
      __$$SavePollImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavePollImplCopyWithImpl<$Res>
    extends _$CreatePollEventCopyWithImpl<$Res, _$SavePollImpl>
    implements _$$SavePollImplCopyWith<$Res> {
  __$$SavePollImplCopyWithImpl(
      _$SavePollImpl _value, $Res Function(_$SavePollImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SavePollImpl implements SavePoll {
  const _$SavePollImpl();

  @override
  String toString() {
    return 'CreatePollEvent.savePoll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SavePollImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() savePoll,
    required TResult Function() addChoice,
    required TResult Function() enterQue,
  }) {
    return savePoll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? savePoll,
    TResult? Function()? addChoice,
    TResult? Function()? enterQue,
  }) {
    return savePoll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? savePoll,
    TResult Function()? addChoice,
    TResult Function()? enterQue,
    required TResult orElse(),
  }) {
    if (savePoll != null) {
      return savePoll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePoll value) savePoll,
    required TResult Function(AddChoice value) addChoice,
    required TResult Function(EnterQue value) enterQue,
  }) {
    return savePoll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePoll value)? savePoll,
    TResult? Function(AddChoice value)? addChoice,
    TResult? Function(EnterQue value)? enterQue,
  }) {
    return savePoll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePoll value)? savePoll,
    TResult Function(AddChoice value)? addChoice,
    TResult Function(EnterQue value)? enterQue,
    required TResult orElse(),
  }) {
    if (savePoll != null) {
      return savePoll(this);
    }
    return orElse();
  }
}

abstract class SavePoll implements CreatePollEvent {
  const factory SavePoll() = _$SavePollImpl;
}

/// @nodoc
abstract class _$$AddChoiceImplCopyWith<$Res> {
  factory _$$AddChoiceImplCopyWith(
          _$AddChoiceImpl value, $Res Function(_$AddChoiceImpl) then) =
      __$$AddChoiceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddChoiceImplCopyWithImpl<$Res>
    extends _$CreatePollEventCopyWithImpl<$Res, _$AddChoiceImpl>
    implements _$$AddChoiceImplCopyWith<$Res> {
  __$$AddChoiceImplCopyWithImpl(
      _$AddChoiceImpl _value, $Res Function(_$AddChoiceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddChoiceImpl implements AddChoice {
  const _$AddChoiceImpl();

  @override
  String toString() {
    return 'CreatePollEvent.addChoice()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddChoiceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() savePoll,
    required TResult Function() addChoice,
    required TResult Function() enterQue,
  }) {
    return addChoice();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? savePoll,
    TResult? Function()? addChoice,
    TResult? Function()? enterQue,
  }) {
    return addChoice?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? savePoll,
    TResult Function()? addChoice,
    TResult Function()? enterQue,
    required TResult orElse(),
  }) {
    if (addChoice != null) {
      return addChoice();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePoll value) savePoll,
    required TResult Function(AddChoice value) addChoice,
    required TResult Function(EnterQue value) enterQue,
  }) {
    return addChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePoll value)? savePoll,
    TResult? Function(AddChoice value)? addChoice,
    TResult? Function(EnterQue value)? enterQue,
  }) {
    return addChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePoll value)? savePoll,
    TResult Function(AddChoice value)? addChoice,
    TResult Function(EnterQue value)? enterQue,
    required TResult orElse(),
  }) {
    if (addChoice != null) {
      return addChoice(this);
    }
    return orElse();
  }
}

abstract class AddChoice implements CreatePollEvent {
  const factory AddChoice() = _$AddChoiceImpl;
}

/// @nodoc
abstract class _$$EnterQueImplCopyWith<$Res> {
  factory _$$EnterQueImplCopyWith(
          _$EnterQueImpl value, $Res Function(_$EnterQueImpl) then) =
      __$$EnterQueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnterQueImplCopyWithImpl<$Res>
    extends _$CreatePollEventCopyWithImpl<$Res, _$EnterQueImpl>
    implements _$$EnterQueImplCopyWith<$Res> {
  __$$EnterQueImplCopyWithImpl(
      _$EnterQueImpl _value, $Res Function(_$EnterQueImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnterQueImpl implements EnterQue {
  const _$EnterQueImpl();

  @override
  String toString() {
    return 'CreatePollEvent.enterQue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnterQueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() savePoll,
    required TResult Function() addChoice,
    required TResult Function() enterQue,
  }) {
    return enterQue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? savePoll,
    TResult? Function()? addChoice,
    TResult? Function()? enterQue,
  }) {
    return enterQue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? savePoll,
    TResult Function()? addChoice,
    TResult Function()? enterQue,
    required TResult orElse(),
  }) {
    if (enterQue != null) {
      return enterQue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePoll value) savePoll,
    required TResult Function(AddChoice value) addChoice,
    required TResult Function(EnterQue value) enterQue,
  }) {
    return enterQue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePoll value)? savePoll,
    TResult? Function(AddChoice value)? addChoice,
    TResult? Function(EnterQue value)? enterQue,
  }) {
    return enterQue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePoll value)? savePoll,
    TResult Function(AddChoice value)? addChoice,
    TResult Function(EnterQue value)? enterQue,
    required TResult orElse(),
  }) {
    if (enterQue != null) {
      return enterQue(this);
    }
    return orElse();
  }
}

abstract class EnterQue implements CreatePollEvent {
  const factory EnterQue() = _$EnterQueImpl;
}

/// @nodoc
mixin _$CreatePollState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePollStateCopyWith<$Res> {
  factory $CreatePollStateCopyWith(
          CreatePollState value, $Res Function(CreatePollState) then) =
      _$CreatePollStateCopyWithImpl<$Res, CreatePollState>;
}

/// @nodoc
class _$CreatePollStateCopyWithImpl<$Res, $Val extends CreatePollState>
    implements $CreatePollStateCopyWith<$Res> {
  _$CreatePollStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreatePollStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreatePollState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CreatePollState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$CreatePollStateCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitImpl implements Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'CreatePollState.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class Submit implements CreatePollState {
  const factory Submit() = _$SubmitImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CreatePollStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreatePollState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CreatePollState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CreatePollStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'CreatePollState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CreatePollState {
  const factory Error() = _$ErrorImpl;
}

/// @nodoc
abstract class _$$ChoiceAddedImplCopyWith<$Res> {
  factory _$$ChoiceAddedImplCopyWith(
          _$ChoiceAddedImpl value, $Res Function(_$ChoiceAddedImpl) then) =
      __$$ChoiceAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoiceAddedImplCopyWithImpl<$Res>
    extends _$CreatePollStateCopyWithImpl<$Res, _$ChoiceAddedImpl>
    implements _$$ChoiceAddedImplCopyWith<$Res> {
  __$$ChoiceAddedImplCopyWithImpl(
      _$ChoiceAddedImpl _value, $Res Function(_$ChoiceAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChoiceAddedImpl implements ChoiceAdded {
  const _$ChoiceAddedImpl();

  @override
  String toString() {
    return 'CreatePollState.choiceAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChoiceAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) {
    return choiceAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) {
    return choiceAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) {
    if (choiceAdded != null) {
      return choiceAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) {
    return choiceAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) {
    return choiceAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) {
    if (choiceAdded != null) {
      return choiceAdded(this);
    }
    return orElse();
  }
}

abstract class ChoiceAdded implements CreatePollState {
  const factory ChoiceAdded() = _$ChoiceAddedImpl;
}

/// @nodoc
abstract class _$$TextAddedImplCopyWith<$Res> {
  factory _$$TextAddedImplCopyWith(
          _$TextAddedImpl value, $Res Function(_$TextAddedImpl) then) =
      __$$TextAddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextAddedImplCopyWithImpl<$Res>
    extends _$CreatePollStateCopyWithImpl<$Res, _$TextAddedImpl>
    implements _$$TextAddedImplCopyWith<$Res> {
  __$$TextAddedImplCopyWithImpl(
      _$TextAddedImpl _value, $Res Function(_$TextAddedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TextAddedImpl implements TextAdded {
  const _$TextAddedImpl();

  @override
  String toString() {
    return 'CreatePollState.textAdded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TextAddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() submit,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function() choiceAdded,
    required TResult Function() textAdded,
  }) {
    return textAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? submit,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function()? choiceAdded,
    TResult? Function()? textAdded,
  }) {
    return textAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? submit,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function()? choiceAdded,
    TResult Function()? textAdded,
    required TResult orElse(),
  }) {
    if (textAdded != null) {
      return textAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Submit value) submit,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
    required TResult Function(ChoiceAdded value) choiceAdded,
    required TResult Function(TextAdded value) textAdded,
  }) {
    return textAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Submit value)? submit,
    TResult? Function(Loading value)? loading,
    TResult? Function(Error value)? error,
    TResult? Function(ChoiceAdded value)? choiceAdded,
    TResult? Function(TextAdded value)? textAdded,
  }) {
    return textAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Submit value)? submit,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    TResult Function(ChoiceAdded value)? choiceAdded,
    TResult Function(TextAdded value)? textAdded,
    required TResult orElse(),
  }) {
    if (textAdded != null) {
      return textAdded(this);
    }
    return orElse();
  }
}

abstract class TextAdded implements CreatePollState {
  const factory TextAdded() = _$TextAddedImpl;
}
