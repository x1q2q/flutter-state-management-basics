import 'package:flutter/material.dart';
import 'package:fire_statex/data/repositories/employee_repository.dart';
import 'package:fire_statex/models/employee.dart';
import 'package:faker/faker.dart';

class ObjectboxViewmodel extends ChangeNotifier {
  final EmployeeRepository _empRepository;
  List<Employee> _employees = [];
  ObjectboxViewmodel(this._empRepository) {
    _loadEmployees();
  }
  List<Employee> get employees => _employees;

  void _loadEmployees() {
    _employees = _empRepository.getAllEmployees();
    notifyListeners();
  }

  Future<void> insert() async {
    final faker = new Faker();
    final emp = Employee(
        name: faker.person.name(),
        jobName: faker.company.position(),
        birthDate: DateTime.now());
    _empRepository.addEmployee(emp);
    _loadEmployees();
  }

  Future<void> remove(int id) async {
    _empRepository.removeEmployee(id);
    _loadEmployees();
  }

  Future<List<Employee>>? allEmployee() async {
    _employees = _empRepository.getAllEmployees();
    return employees;
  }
}
