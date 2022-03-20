import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitConsumer<CubitT extends StateStreamable<StateT>, StateT> {
  Widget builder({
    required Widget Function(BuildContext, StateT) builder,
    BlocBuilderCondition<StateT>? buildWhen,
  }) {
    return BlocBuilder<CubitT, StateT>(
      builder: builder,
      buildWhen: buildWhen,
    );
  }

  Widget listener({
    required Function(BuildContext, StateT) listener,
    Widget? child,
  }) {
    return BlocListener<CubitT, StateT>(
      listener: listener,
      child: child,
    );
  }
}
