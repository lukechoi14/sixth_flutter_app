import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixth_flutter_app/pages/home/home_controller.dart';

//GetView 로 controller를 불러서 그 안에 있는 variable을 접근할 수 있다
class HomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          //이미 GetView에서 controller를 불러와서 다시 initialize를 할필요가 없이 controller로 사용
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}