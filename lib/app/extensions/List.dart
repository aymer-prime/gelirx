import 'package:flutter/material.dart';

extension ListX on List {
  List<Widget> separateWith(Widget separator) {
    List<Widget> result = [];
    for (var i = 0; i < length; i++) {
      result.add(this[i]);
      if (i != length - 1) {
        result.add(separator);
      }
    }
    return result;
  }
}

extension IterableModifier<E> on Iterable<E> {
  E? firstWhereOrNull(bool Function(E) test) =>
      cast<E?>().firstWhere((v) => v != null && test(v), orElse: () => null);
}
