import 'package:fire_statex/data/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:fire_statex/presentation/viewmodels/objectbox_viewmodel.dart';
import 'package:provider/provider.dart';

class Nested1Page extends StatefulWidget {
  Nested1Page({Key? key}) : super(key: key);

  @override
  State<Nested1Page> createState() => _Nested1PageState();
}

class _Nested1PageState extends State<Nested1Page> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final model = Provider.of<ObjectboxViewmodel>(context, listen: false);
      model.init();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ObjectboxViewmodel>(context);
    return Column(children: <Widget>[
      Center(
          child: ElevatedButton(
              onPressed: () async {
                await model.insert();
              },
              child: Text('Tambah UserPlus+'))),
      Expanded(
          child: FutureBuilder<List<EmployeeModel>>(
              future: model.fetchAll(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<EmployeeModel>> snapshot) {
                if (snapshot.hasData) {
                  return ListView.separated(
                      itemCount: snapshot.data!.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(height: 1, color: Colors.grey),
                      itemBuilder: (BuildContext context, int index) {
                        EmployeeModel emp = snapshot.data![index];
                        return ListTile(
                          title: Text(emp.name!),
                          subtitle: Text(emp.jobName!),
                        );
                      });
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error'));
                }
                return CircularProgressIndicator();
              }))
    ]);
  }
}
