import 'package:get/get.dart';
import 'package:laxminarayan_portfolio/pages/pages.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
