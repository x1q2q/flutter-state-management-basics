import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fire_statex/presentation/views/home/home_page.dart';
import 'package:fire_statex/presentation/viewmodels/home_viewmodel.dart';
import 'package:fire_statex/presentation/views/tab4/custom_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => HomeViewmodel()),
      ChangeNotifierProvider(create: (_) => CustomProvider())
    ],
    child: const MainApp(),
  ));
}

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
