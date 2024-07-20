import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:fire_statex/data/objectbox.dart';
import 'package:fire_statex/data/repositories/employee_repository.dart';
import 'package:fire_statex/viewmodels/custom_viewmodel.dart';
import 'package:fire_statex/viewmodels/home_viewmodel.dart';
import 'package:fire_statex/viewmodels/objectbox_viewmodel.dart';
import 'app.dart';

Future<void> main() async {
  initializeDateFormatting();
  WidgetsFlutterBinding.ensureInitialized();
  final empBox = await ObjectBox.create();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => HomeViewmodel()),
      ChangeNotifierProvider(create: (_) => CustomViewmodel()),
      Provider<EmployeeRepository>(
          create: (_) => EmployeeRepository(empBox.store)),
      ChangeNotifierProvider<ObjectboxViewmodel>(
          create: (context) =>
              ObjectboxViewmodel(context.read<EmployeeRepository>()))
    ],
    child: const MainApp(),
  ));
}
