import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CubitProvider<CubitT extends Cubit> extends StatelessWidget {
  const CubitProvider({
    required this.child,
    this.onCreate,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Future<void> Function(BuildContext, CubitT)? onCreate;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) {
        final cubit = GetIt.instance.get<CubitT>();
        onCreate?.call(ctx, cubit);

        return cubit;
      },
      child: child,
    );
  }
}
