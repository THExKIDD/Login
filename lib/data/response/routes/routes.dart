import 'package:get/get.dart';
import 'package:login/data/response/routes/routes_name.dart';
import 'package:login/view/splash_screen.dart';

class AppRoutes
{

  static appRoute() => [
    GetPage(name: RoutesName.splashScreen,
        page: () => SplashScreen(),
        transition: Transition.zoom,
        transitionDuration: Duration(milliseconds: 250)),
  ];
}