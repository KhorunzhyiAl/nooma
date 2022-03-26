// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Ready ready(
      {required String languageName,
      required int estimatedVocabulary,
      required int wordsCurrentlyLearning,
      required int todaysGoal,
      required int cardsCompletedToday}) {
    return _Ready(
      languageName: languageName,
      estimatedVocabulary: estimatedVocabulary,
      wordsCurrentlyLearning: wordsCurrentlyLearning,
      todaysGoal: todaysGoal,
      cardsCompletedToday: cardsCompletedToday,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String languageName, int estimatedVocabulary,
            int wordsCurrentlyLearning, int todaysGoal, int cardsCompletedToday)
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String languageName,
            int estimatedVocabulary,
            int wordsCurrentlyLearning,
            int todaysGoal,
            int cardsCompletedToday)?
        ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String languageName,
            int estimatedVocabulary,
            int wordsCurrentlyLearning,
            int todaysGoal,
            int cardsCompletedToday)?
        ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String languageName, int estimatedVocabulary,
            int wordsCurrentlyLearning, int todaysGoal, int cardsCompletedToday)
        ready,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String languageName,
            int estimatedVocabulary,
            int wordsCurrentlyLearning,
            int todaysGoal,
            int cardsCompletedToday)?
        ready,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String languageName,
            int estimatedVocabulary,
            int wordsCurrentlyLearning,
            int todaysGoal,
            int cardsCompletedToday)?
        ready,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call(
      {String languageName,
      int estimatedVocabulary,
      int wordsCurrentlyLearning,
      int todaysGoal,
      int cardsCompletedToday});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object? languageName = freezed,
    Object? estimatedVocabulary = freezed,
    Object? wordsCurrentlyLearning = freezed,
    Object? todaysGoal = freezed,
    Object? cardsCompletedToday = freezed,
  }) {
    return _then(_Ready(
      languageName: languageName == freezed
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
      estimatedVocabulary: estimatedVocabulary == freezed
          ? _value.estimatedVocabulary
          : estimatedVocabulary // ignore: cast_nullable_to_non_nullable
              as int,
      wordsCurrentlyLearning: wordsCurrentlyLearning == freezed
          ? _value.wordsCurrentlyLearning
          : wordsCurrentlyLearning // ignore: cast_nullable_to_non_nullable
              as int,
      todaysGoal: todaysGoal == freezed
          ? _value.todaysGoal
          : todaysGoal // ignore: cast_nullable_to_non_nullable
              as int,
      cardsCompletedToday: cardsCompletedToday == freezed
          ? _value.cardsCompletedToday
          : cardsCompletedToday // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(
      {required this.languageName,
      required this.estimatedVocabulary,
      required this.wordsCurrentlyLearning,
      required this.todaysGoal,
      required this.cardsCompletedToday});

  @override
  final String languageName;
  @override
  final int estimatedVocabulary;
  @override
  final int wordsCurrentlyLearning;
  @override
  final int todaysGoal;
  @override
  final int cardsCompletedToday;

  @override
  String toString() {
    return 'HomeState.ready(languageName: $languageName, estimatedVocabulary: $estimatedVocabulary, wordsCurrentlyLearning: $wordsCurrentlyLearning, todaysGoal: $todaysGoal, cardsCompletedToday: $cardsCompletedToday)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ready &&
            const DeepCollectionEquality()
                .equals(other.languageName, languageName) &&
            const DeepCollectionEquality()
                .equals(other.estimatedVocabulary, estimatedVocabulary) &&
            const DeepCollectionEquality()
                .equals(other.wordsCurrentlyLearning, wordsCurrentlyLearning) &&
            const DeepCollectionEquality()
                .equals(other.todaysGoal, todaysGoal) &&
            const DeepCollectionEquality()
                .equals(other.cardsCompletedToday, cardsCompletedToday));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(languageName),
      const DeepCollectionEquality().hash(estimatedVocabulary),
      const DeepCollectionEquality().hash(wordsCurrentlyLearning),
      const DeepCollectionEquality().hash(todaysGoal),
      const DeepCollectionEquality().hash(cardsCompletedToday));

  @JsonKey(ignore: true)
  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String languageName, int estimatedVocabulary,
            int wordsCurrentlyLearning, int todaysGoal, int cardsCompletedToday)
        ready,
  }) {
    return ready(languageName, estimatedVocabulary, wordsCurrentlyLearning,
        todaysGoal, cardsCompletedToday);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String languageName,
            int estimatedVocabulary,
            int wordsCurrentlyLearning,
            int todaysGoal,
            int cardsCompletedToday)?
        ready,
  }) {
    return ready?.call(languageName, estimatedVocabulary,
        wordsCurrentlyLearning, todaysGoal, cardsCompletedToday);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            String languageName,
            int estimatedVocabulary,
            int wordsCurrentlyLearning,
            int todaysGoal,
            int cardsCompletedToday)?
        ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(languageName, estimatedVocabulary, wordsCurrentlyLearning,
          todaysGoal, cardsCompletedToday);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements HomeState {
  const factory _Ready(
      {required String languageName,
      required int estimatedVocabulary,
      required int wordsCurrentlyLearning,
      required int todaysGoal,
      required int cardsCompletedToday}) = _$_Ready;

  String get languageName;
  int get estimatedVocabulary;
  int get wordsCurrentlyLearning;
  int get todaysGoal;
  int get cardsCompletedToday;
  @JsonKey(ignore: true)
  _$ReadyCopyWith<_Ready> get copyWith => throw _privateConstructorUsedError;
}
