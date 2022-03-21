import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/utils/log_printer.dart';
import 'package:nooma/presentation/common/cubit_helpers/cubit_consumer.dart';
import 'package:nooma/presentation/common/cubit_helpers/cubit_provider.dart';
import 'package:nooma/presentation/main_tabs_screen/cubit/main_tabs_cubit.dart';
import 'package:nooma/presentation/main_tabs_screen/cubit/main_tabs_state.dart';
import 'package:nooma/presentation/main_tabs_screen/widgets/tabs_widget.dart';

class MainTabsScreen extends CubitConsumerWidget<MainTabsCubit, MainTabsState> {
  MainTabsScreen({Key? key}) : super(key: key);

  static Widget create() {
    return CubitProvider<MainTabsCubit>(
      child: MainTabsScreen(),
    );
  }

  late final _log = PrefixLogger('MainTabsScreen ${identityHashCode(this)}');

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        _buildPageBuilder(),
        _buildTabs(),
      ],
    );
  }

  Positioned _buildTabs() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: builder(
          builder: (context, state) {
            return TabsWidget(selectedTab: state.selectedTab);
          },
        ),
      );
  }

  // Screen - the whole thing; page - one of the tabs.
  Widget _buildPageBuilder() {
    return builder(
      builder: (context, state) {
        switch (state.selectedTab) {
          case 0:
            return Container();
          case 1:
            return Container();
          default:
            _log.i('No page with id=${state.selectedTab}');
            return const SizedBox.shrink();
        }
      },
    );
  }
}
