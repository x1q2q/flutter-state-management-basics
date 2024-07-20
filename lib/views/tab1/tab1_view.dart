import 'package:flutter/material.dart';
// import 'package:fire_statex/presentation/widgets/counter_widget.dart';
import 'package:fire_statex/views/tab1_nested/nested1_page.dart';
import 'package:fire_statex/views/tab1_nested/nested2_page.dart';

class Tab1View extends StatefulWidget {
  Tab1View({Key? key}) : super(key: key);

  @override
  State<Tab1View> createState() => _Tab1ViewState();
}

class _Tab1ViewState extends State<Tab1View> with TickerProviderStateMixin {
  int counter = 0;
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       const Text('Implementation basic statefulWidget'),
    //       Text('counter: $counter'),
    //       CounterWidget(onIncrement: () {
    //         setState(() => counter = counter + 1);
    //       }, onDecrement: () {
    //         setState(() => counter = counter - 1);
    //       })
    //     ]);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar.secondary(
              controller: _tabController,
              tabs: <Widget>[Tab(text: 'Objectbox'), Tab(text: 'Isar')]),
          Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[Nested1Page(), Nested2Page()]))
        ]);
  }
}
