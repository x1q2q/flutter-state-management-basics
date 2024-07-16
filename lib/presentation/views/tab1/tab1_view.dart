import 'package:flutter/material.dart';
import 'package:fire_statex/presentation/widgets/counter_widget.dart';

class Tab1View extends StatefulWidget {
  Tab1View({Key? key}) : super(key: key);

  @override
  State<Tab1View> createState() => _Tab1ViewState();
}

class _Tab1ViewState extends State<Tab1View> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('Implementation basic statefulWidget'),
          Text('counter: $counter'),
          CounterWidget(onIncrement: () {
            setState(() => counter = counter + 1);
          }, onDecrement: () {
            setState(() => counter = counter - 1);
          })
        ]);
  }
}
