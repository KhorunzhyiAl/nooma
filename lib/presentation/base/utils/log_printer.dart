import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

class PrefixLogger extends Logger {
  PrefixLogger(
    String prefix, {
    LogFilter? filter,
    Level? level,
    LogOutput? output,
    LogPrinter? printer,
  }) : super(
          filter: filter,
          level: level,
          output: output ?? _PrefixOutput(prefix),
          printer: printer,
        );
}

class _PrefixOutput extends LogOutput {
  _PrefixOutput(this.prefix);

  final String prefix;

  @override
  void output(OutputEvent event) {
    for (var i = 0; i < event.lines.length; ++i) {
      if (i == 1) debugPrint('| $prefix');
      debugPrint(event.lines[i]);
    }
  }
}
