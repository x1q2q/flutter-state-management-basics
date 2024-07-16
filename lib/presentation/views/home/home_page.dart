import 'package:flutter/material.dart';
import 'home_view.dart';
import 'package:provider/provider.dart';
import 'package:fire_statex/presentation/viewmodels/home_viewmodel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewmodel>(context);
    return DefaultTabController(
        length: viewModel.tabBar.length,
        child: Scaffold(
            body: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverOverlapAbsorber(
                        handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                            context),
                        sliver: SliverAppBar(
                          title: Text(viewModel.appName),
                          pinned: true,
                          forceElevated: innerBoxIsScrolled,
                          bottom: TabBar(
                            tabs: viewModel.tabBar
                                .map((item) => Tab(child: Text(item['menu'])))
                                .toList(),
                          ),
                        ))
                  ];
                },
                body: HomeView())));
  }
}
