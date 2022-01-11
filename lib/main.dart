import 'package:flutter/material.dart';
import 'package:sixth_flutter_app/pages/dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:sixth_flutter_app/pages/dashboard/dashboard_binding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/",page: ()=>MyDashBoard(),binding: DashBoardBinding()),
      ],

    );
  }
}
