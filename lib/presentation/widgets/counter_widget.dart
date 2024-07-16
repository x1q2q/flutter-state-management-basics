import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final void Function() onIncrement;
  final void Function() onDecrement;
  const CounterWidget({
    Key? key,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ElevatedButton(
            onPressed: onIncrement, child: const Text('increment value')),
        const Spacer(),
        ElevatedButton(
            onPressed: onDecrement, child: const Text('decrement value'))
      ],
    );
  }
}
