import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class _CubitConsumer<CubitT extends StateStreamable<StateT>, StateT> {
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

abstract class CubitConsumerWidget<CubitT extends StateStreamableSource<StateT>,
    StateT> extends StatelessWidget with _CubitConsumer<CubitT, StateT> {
  const CubitConsumerWidget({Key? key}) : super(key: key);

  CubitT cubit(BuildContext context) {
    return BlocProvider.of<CubitT>(context);
  }
}

abstract class CubitConsumerState<
    WidgetT extends StatefulWidget,
    CubitT extends StateStreamableSource<StateT>,
    StateT> extends State<WidgetT> with _CubitConsumer<CubitT, StateT> {
  CubitT get cubit {
    return BlocProvider.of<CubitT>(context);
  }
}
