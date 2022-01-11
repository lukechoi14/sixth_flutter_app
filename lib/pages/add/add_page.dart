import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixth_flutter_app/pages/add/add_controller.dart';

class AddPage extends GetView<AddController> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //controller에 있는 obs를 부를땐 꼭 Obx 함수로 부른다.
              Obx(()=>Text("${controller.counter.value}")),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary:Colors.redAccent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
                child: Text("Increase"),
                onPressed: (){
                  controller.increaseCounter();
                },
              ),


            ],
          ),
        ),
      ),
    );;
  }
}