import 'package:base_project_flutter/ui/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoute {
  const AppRoute._();

  static final List<GetPage<dynamic>> routeList = [
    GetPage(name: AppRoute.init, page: () => const HomePage()),
  ];

  static const init = '/';
}
