import 'package:get/get.dart';
import 'package:login/data/response/routes/routes_name.dart';
import 'package:login/view/Login/login_view.dart';
import 'package:login/view/home/home_view.dart';
import 'package:login/view/splash_screen.dart';

class AppRoutes
{

  static appRoute() => [
    GetPage(name: RoutesName.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 150)),
    GetPage(name: RoutesName.loginScreen,
        page: () => loginView(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 250)),
    GetPage(name: RoutesName.homeView,
        page: () => HomeView(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 250)),
  ];
}