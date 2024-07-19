import 'package:objectbox/objectbox.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:fire_statex/data/models/objectbox.g.dart';
import 'package:fire_statex/data/models/employee_model.dart';

class ObjectBox {
  late final Store store;

  ObjectBox._create(this.store) {}
  static Future<ObjectBox> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store =
        await openStore(directory: p.join(docsDir.path, "obx-employee"));
    return ObjectBox._create(store);
  }
}
