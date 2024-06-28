
import 'dart:async';

import 'package:get/get.dart';
import 'package:login/data/response/routes/routes_name.dart';
import 'package:login/view_models/Controller/user_preference/user_preference_view_model.dart';

class SplashServices

{

  UserPreference userPreference =UserPreference();

  void isLogin()
  {
    userPreference.getUser().then((value){
      print(value.token);
      print(isLogin);
      if(value.isLogin == false || value.isLogin.toString() == 'null'){
        Timer(const Duration(seconds: 3),
                () => Get.toNamed(RoutesName.loginScreen)
        );
      }
      else
        {
          Timer(const Duration(seconds: 3),
                  () => Get.toNamed(RoutesName.homeView)
          );
        }
    });


  }
}