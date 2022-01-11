import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixth_flutter_app/pages/add/add_controller.dart';


class UsersPage extends StatelessWidget {
  final AddController c = Get.put(AddController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
           children:[
             Text(
              "Users Page",
              style: TextStyle(fontSize: 20),
            ),
             Divider(),
             Obx(()=>Text("${c.counter.value}", style: TextStyle(fontSize: 30),))
           ]
          )

        ),
      ),
    );
  }
}