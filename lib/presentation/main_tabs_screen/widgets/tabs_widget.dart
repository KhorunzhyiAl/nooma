import 'package:flutter/material.dart';
import 'package:nooma/presentation/base/theme/noom_theme.dart';
import 'package:nooma/presentation/common/cubit_helpers/cubit_consumer.dart';
import 'package:nooma/presentation/localization/gen/locale.g.dart';
import 'package:nooma/presentation/main_tabs_screen/cubit/main_tabs_cubit.dart';
import 'package:nooma/presentation/main_tabs_screen/cubit/main_tabs_state.dart';
import 'package:nooma/presentation/main_tabs_screen/widgets/tab_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class TabsWidget extends CubitConsumerWidget<MainTabsCubit, MainTabsState> {
  TabsWidget({
    required this.selectedTab,
    Key? key,
  }) : super(key: key);

  final int selectedTab;

  late final _tabsData = [
    _TabData(
      iconData: Icons.home,
      name: LocaleKeys.home.tr(),
    ),
    _TabData(
      iconData: Icons.settings,
      name: LocaleKeys.settings.tr(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = NoomTheme.of(context);

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: theme.white,
        boxShadow: [
          BoxShadow(
            color: theme.black10,
            blurRadius: 10,
          ),
        ],
      ),
      child: _buildTabs(context),
    );
  }

  Widget _buildTabs(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _generateTabs(context),
      ),
    );
  }

  List<Widget> _generateTabs(BuildContext context) {
    return [
      for (int i = 0; i < _tabsData.length; ++i) ...[
        Expanded(
          child: TabWidget(
            onPressed: () => cubit(context).onSetTab(i),
            iconData: _tabsData[i].iconData,
            name: _tabsData[i].name,
            isSelected: selectedTab == i,
          ),
        ),
        const SizedBox(width: 5),
      ],
    ];
  }
}

class _TabData {
  const _TabData({
    required this.iconData,
    required this.name,
  });

  final IconData iconData;
  final String name;
}
