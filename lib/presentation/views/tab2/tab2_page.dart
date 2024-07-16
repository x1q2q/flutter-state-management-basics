import 'package:flutter/material.dart';
import 'package:fire_statex/presentation/views/tab2/tab2_view.dart';

class Tab2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (context, StateSetter setState) =>
            SafeArea(child: SafeArea(child: Tab2View())));
  }
}
