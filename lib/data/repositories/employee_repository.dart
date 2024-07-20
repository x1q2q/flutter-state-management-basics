import 'package:objectbox/objectbox.dart';
import '../objectbox.g.dart';
import 'package:fire_statex/models/employee.dart';

class EmployeeRepository {
  final Box<Employee> _empBox;
  EmployeeRepository(Store store) : _empBox = store.box<Employee>();
  List<Employee> getAllEmployees() => _empBox.getAll();
  void addEmployee(Employee emp) {
    _empBox.put(emp);
  }

  void removeEmployee(int id) {
    _empBox.remove(id);
  }
}
