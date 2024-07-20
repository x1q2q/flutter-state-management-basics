import 'package:objectbox/objectbox.dart';

@Entity()
class Employee {
  @Id()
  int id = 0;
  String? name;
  String? jobName;
  @Property(type: PropertyType.date)
  DateTime? birthDate;
  Employee({this.name, this.jobName, this.birthDate});
}
