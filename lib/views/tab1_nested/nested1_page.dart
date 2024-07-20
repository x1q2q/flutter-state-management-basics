import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fire_statex/models/employee.dart';
import 'package:fire_statex/viewmodels/objectbox_viewmodel.dart';
import 'package:fire_statex/utils/utils.dart';

class Nested1Page extends StatefulWidget {
  Nested1Page({Key? key}) : super(key: key);

  @override
  State<Nested1Page> createState() => _Nested1PageState();
}

class _Nested1PageState extends State<Nested1Page> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addObserver(this);
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   final model = Provider.of<ObjectboxViewmodel>(context, listen: false);
    //   print(model.employees);
    // });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ObjectboxViewmodel>();
    return Column(children: <Widget>[
      Center(
          child: ElevatedButton(
              onPressed: () async {
                await model.insert();
              },
              child: Text('Tambah Employee +'))),
      const Divider(color: Colors.black45),
      Expanded(
          child: FutureBuilder<List<Employee>>(
              future: model.allEmployee(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Center(child: Text('Error'));
                } else {
                  if (snapshot.data!.isEmpty) {
                    return Text('data masih kosong');
                  }
                  return ListView.separated(
                      itemCount: snapshot.data!.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(height: 1, color: Colors.grey),
                      itemBuilder: (BuildContext context, int index) {
                        Employee emp = snapshot.data![index];
                        return ListTile(
                          title: Text(emp.name!),
                          subtitle: Text(Utils.toFormattedDate(
                              'dd MMMM yyyy, (HH:mm:s)',
                              datetime: emp.birthDate)),
                          trailing: IconButton(
                              onPressed: () {
                                model.remove(emp.id);
                              },
                              icon: const Icon(Icons.remove_circle_outline)),
                        );
                      });
                }
              }))
    ]);
  }
}
