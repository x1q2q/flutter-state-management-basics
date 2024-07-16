import 'package:flutter/material.dart';
import 'tab3_view.dart';
import 'counter.dart';

class Tab3Page extends StatelessWidget {
  const Tab3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Counter(counter: 0, child: Tab3View()));
  }
}
