import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkCheckerController extends GetxController {
  RxBool isInternetConnect = true.obs;
  NetworkCheckerController() {
    onInit();
    isInternetConnectFunc();
  }
  @override
  void onInit() {
    isInternetConnectFunc();
    super.onInit();
  }

  /*
fonction pour checker la disponibilité de la connexion
  */
  isInternetConnectFunc() async {
    isInternetConnect.value = await InternetConnectionChecker().hasConnection;
  }
}
