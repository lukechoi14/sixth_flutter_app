import 'package:get/get.dart';
import 'package:sixth_flutter_app/pages/add/add_controller.dart';
import 'package:sixth_flutter_app/pages/dashboard/dashboard_controller.dart';
import 'package:sixth_flutter_app/pages/home/home_controller.dart';

class DashBoardBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AddController>(() => AddController());
  }

}