import 'package:get/get.dart';

import '../app/modules/home/views/home_view.dart';
import '../app/modules/user/views/user_view.dart';
class AppRoutes {
  static final String initial = '/ouverture';
  static final routes = [
    GetPage(
      name: initial,
      page: () => Ouverture(),
      binding: HomeBinding(), // Utilisez le binding correspondant
    ),
    GetPage(
      name: '/user',
      page: () => UserView(),
      binding: UserBinding(), // Utilisez le binding correspondant
    ),
  ];
}
