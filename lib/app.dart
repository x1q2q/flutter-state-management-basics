import 'package:flutter/material.dart';
import 'package:fire_statex/views/home/home_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: const ColorScheme.light().copyWith(
          primary: Colors.purpleAccent,
          secondary: Colors.lightBlue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
