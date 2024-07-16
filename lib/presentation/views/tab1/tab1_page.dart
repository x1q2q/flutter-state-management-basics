import 'package:flutter/material.dart';
import 'tab1_view.dart';

class Tab1Page extends StatelessWidget {
  const Tab1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20), child: Tab1View());
  }
}
