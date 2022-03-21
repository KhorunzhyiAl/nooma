import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nooma/presentation/main_tabs_screen/cubit/main_tabs_state.dart';

@injectable
class MainTabsCubit extends Cubit<MainTabsState> {
  MainTabsCubit() : super(const MainTabsState());

  void onSetTab(int selectedTab) {
    if (selectedTab == state.selectedTab) return;
    
    emit(state.copyWith(selectedTab: selectedTab));
  }
}
