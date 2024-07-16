import 'package:flutter/material.dart';
import 'counter.dart';
import 'package:fire_statex/presentation/widgets/counter_widget.dart';

class Tab3View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int counter = Counter.of(context)?.counter ?? 0;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('Implementation basic inheritedWidget'),
            Text('counter: $counter'),
            CounterWidget(
                onIncrement: () => setState(() => counter++),
                onDecrement: () => setState(() => counter--))
          ]);
    });
  }
}
