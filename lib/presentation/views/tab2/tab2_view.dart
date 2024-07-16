import 'package:flutter/material.dart';
import 'package:fire_statex/presentation/widgets/counter_widget.dart';

class Tab2View extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (context, StateSetter setState) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('Implementation basic statefulBuilder'),
                  Text('counter: $counter'),
                  CounterWidget(onIncrement: () {
                    setState(() => counter++);
                  }, onDecrement: () {
                    setState(() => counter--);
                  })
                ]));
  }
}
