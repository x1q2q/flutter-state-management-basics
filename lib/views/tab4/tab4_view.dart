import 'package:flutter/material.dart';
import 'package:fire_statex/res/widgets/counter_widget.dart';
import 'package:provider/provider.dart';
import 'package:fire_statex/viewmodels/custom_viewmodel.dart';

class Tab4View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CustomViewmodel>(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('Implementation basic provider'),
          Text('counter: ${provider.counter}'),
          CounterWidget(
              onIncrement: provider.increment, onDecrement: provider.decrement)
        ]);
  }
}
