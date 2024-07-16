import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fire_statex/presentation/viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewmodel>(context);
    return TabBarView(
        children: List.generate(viewModel.tabBar.length, (j) {
      return SafeArea(
          top: false,
          bottom: false,
          child: Builder(builder: (BuildContext context) {
            String onMenu = viewModel.tabBar[j]['menu'];
            print('on: $onMenu');
            return CustomScrollView(
                key: PageStorageKey<String>(onMenu),
                slivers: <Widget>[
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                  ),
                  SliverToBoxAdapter(child: viewModel.tabBar[j]['widget'])
                ]);
          }));
    }));
  }
}
