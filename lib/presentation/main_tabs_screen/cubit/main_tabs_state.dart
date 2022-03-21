import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_tabs_state.freezed.dart';

@freezed
class MainTabsState with _$MainTabsState {
  const factory MainTabsState({@Default(0) int selectedTab}) = _MainTabsState;
}
