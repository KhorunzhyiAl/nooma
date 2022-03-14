import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nooma/presentation/base/cubit_helpers/cubit_consumer.dart';

abstract class CubitConsumerState<
    WidgetT extends StatefulWidget,
    CubitT extends StateStreamableSource<StateT>,
    StateT> extends State<WidgetT> with CubitConsumer<CubitT, StateT> {
  CubitT get cubit {
    return BlocProvider.of<CubitT>(context);
  }
}
