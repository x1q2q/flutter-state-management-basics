import 'package:flutter/material.dart';
import 'package:fire_statex/presentation/views/tab1/tab1_page.dart';
import 'package:fire_statex/presentation/views/tab2/tab2_page.dart';
import 'package:fire_statex/presentation/views/tab3/tab3_page.dart';
import 'package:fire_statex/presentation/views/tab4/tab4_page.dart';

class HomeViewmodel extends ChangeNotifier {
  final List<Map<String, dynamic>> _tabBar = [
    {'menu': 'statefulWidgets', 'widget': const Tab1Page()},
    {'menu': 'statefulBuilder', 'widget': const Tab2Page()},
    {'menu': 'inheritedWidgets', 'widget': const Tab3Page()},
    {'menu': 'provider', 'widget': const Tab4Page()}
  ];
  List<Map<String, dynamic>> get tabBar => _tabBar;
  final String _appName = 'Flutter Statex';
  String get appName => _appName;
}
