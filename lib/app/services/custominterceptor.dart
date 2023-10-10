//les intercepteurs permettent d'intercepter le processus de chaque requete de l'application
import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  @override
  //permet de faire quelque chose avant que la requête ne soit envoyée
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // pour récupérer le token
    // var sessioncontroller = Get.find<UserSessionController>();
    /*
      on cherche la session ; si elle existe on construit le header et on injecte
    */
    // if (sessioncontroller.islogged()) {
    //   String token = sessioncontroller.getSession().token;
    //   var headers = {"Authorization": "Bearer $token"};
    //   options.headers = headers;
    // }

    handler.next(options);
  }
}
