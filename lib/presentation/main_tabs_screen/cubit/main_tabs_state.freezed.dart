// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_tabs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainTabsStateTearOff {
  const _$MainTabsStateTearOff();

  _MainTabsState call({int selectedTab = 0}) {
    return _MainTabsState(
      selectedTab: selectedTab,
    );
  }
}

/// @nodoc
const $MainTabsState = _$MainTabsStateTearOff();

/// @nodoc
mixin _$MainTabsState {
  int get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTabsStateCopyWith<MainTabsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabsStateCopyWith<$Res> {
  factory $MainTabsStateCopyWith(
          MainTabsState value, $Res Function(MainTabsState) then) =
      _$MainTabsStateCopyWithImpl<$Res>;
  $Res call({int selectedTab});
}

/// @nodoc
class _$MainTabsStateCopyWithImpl<$Res>
    implements $MainTabsStateCopyWith<$Res> {
  _$MainTabsStateCopyWithImpl(this._value, this._then);

  final MainTabsState _value;
  // ignore: unused_field
  final $Res Function(MainTabsState) _then;

  @override
  $Res call({
    Object? selectedTab = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MainTabsStateCopyWith<$Res>
    implements $MainTabsStateCopyWith<$Res> {
  factory _$MainTabsStateCopyWith(
          _MainTabsState value, $Res Function(_MainTabsState) then) =
      __$MainTabsStateCopyWithImpl<$Res>;
  @override
  $Res call({int selectedTab});
}

/// @nodoc
class __$MainTabsStateCopyWithImpl<$Res>
    extends _$MainTabsStateCopyWithImpl<$Res>
    implements _$MainTabsStateCopyWith<$Res> {
  __$MainTabsStateCopyWithImpl(
      _MainTabsState _value, $Res Function(_MainTabsState) _then)
      : super(_value, (v) => _then(v as _MainTabsState));

  @override
  _MainTabsState get _value => super._value as _MainTabsState;

  @override
  $Res call({
    Object? selectedTab = freezed,
  }) {
    return _then(_MainTabsState(
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MainTabsState implements _MainTabsState {
  const _$_MainTabsState({this.selectedTab = 0});

  @JsonKey()
  @override
  final int selectedTab;

  @override
  String toString() {
    return 'MainTabsState(selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainTabsState &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedTab));

  @JsonKey(ignore: true)
  @override
  _$MainTabsStateCopyWith<_MainTabsState> get copyWith =>
      __$MainTabsStateCopyWithImpl<_MainTabsState>(this, _$identity);
}

abstract class _MainTabsState implements MainTabsState {
  const factory _MainTabsState({int selectedTab}) = _$_MainTabsState;

  @override
  int get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$MainTabsStateCopyWith<_MainTabsState> get copyWith =>
      throw _privateConstructorUsedError;
}
