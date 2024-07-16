import 'package:flutter/material.dart';
import 'package:fire_statex/presentation/views/tab1/tab1_page.dart';

class HomeViewmodel extends ChangeNotifier {
  final List<Map<String, dynamic>> _tabBar = [
    {'menu': 'statefulWidgets', 'widget': const Tab1Page()},
    {'menu': 'statefulBuilder', 'widget': const Tab1Page()},
    {'menu': 'inheritedWidgets', 'widget': const Tab1Page()},
    {'menu': 'provider', 'widget': const Tab1Page()}
  ];
  List<Map<String, dynamic>> get tabBar => _tabBar;
  final String _appName = 'Flutter Statex';
  String get appName => _appName;
}
