import 'package:flutter/material.dart';
import 'package:fire_statex/data/services/objectbox_service.dart';
import 'package:fire_statex/data/models/employee_model.dart';

class ObjectboxViewmodel extends ChangeNotifier {
  late ObjectBox objectBox;
  Future<void> init() async {
    objectBox = await ObjectBox.create();
  }

  Future<void> insert() async {
    final userBox = objectBox.store.box<EmployeeModel>();

    final user = EmployeeModel(
        name: 'arafik', jobName: 'Programmer', birthDate: DateTime.now());
    userBox.put(user);
  }

  Future<List<EmployeeModel>> fetchAll() async {
    return objectBox.store.box<EmployeeModel>().getAll();
  }

  Future<void> close() async {
    objectBox.store.close();
  }
}
