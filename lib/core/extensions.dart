import 'dart:developer' as dev show log;

extension Log on Object {
  void log([String tag = 'Log']) {
    dev.log(toString(), name: tag);
  }
}
