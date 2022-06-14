import 'package:get/get.dart';
import 'package:laxminarayan_portfolio/navigators/navigators.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 10), () => RouteManagement.goToHome());
    super.onInit();
  }
}
