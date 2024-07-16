import 'package:flutter/material.dart';

// Counter extend the inheritedWidget
class Counter extends InheritedWidget {
  Counter({Key? key, required this.counter, required Widget child})
      : super(key: key, child: child);
  final int counter;

  static Counter? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Counter>();
  }

  @override
  bool updateShouldNotify(Counter oldWidget) {
    return oldWidget.counter != counter;
  }
}
