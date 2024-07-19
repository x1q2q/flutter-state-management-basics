import 'package:objectbox/objectbox.dart';

@Entity()
class EmployeeModel {
  @Id()
  int id = 0;
  String? name;
  String? jobName;
  @Property(type: PropertyType.date)
  DateTime? birthDate;
  EmployeeModel({this.name, this.jobName, this.birthDate});
}
