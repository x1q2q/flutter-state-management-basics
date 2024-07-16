import 'package:flutter/material.dart';

class Tab1View extends StatefulWidget {
  Tab1View({Key? key}) : super(key: key);

  @override
  State<Tab1View> createState() => _Tab1ViewState();
}

class _Tab1ViewState extends State<Tab1View> {
  int counter = 0;
  void changeCounter(int newCounter) {
    setState(() {
      counter = newCounter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text('Implementation basic statefulWidget'),
        Text('counter: $counter'),
        Row(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  changeCounter(counter++);
                },
                child: const Text('increment value')),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  changeCounter(counter--);
                },
                child: const Text('decrement value'))
          ],
        )
      ],
    );
  }
}
