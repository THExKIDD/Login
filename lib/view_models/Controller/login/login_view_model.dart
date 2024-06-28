import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login/Repository/login_repository/login_repository.dart';
import 'package:login/data/response/routes/routes_name.dart';
import 'package:login/models/login/user_model.dart';
import 'package:login/utils/utils.dart';
import 'package:login/view_models/Controller/user_preference/user_preference_view_model.dart';

class LoginViewModel extends GetxController
{
  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passFocusNode = FocusNode().obs;

RxBool loading = false.obs;
  void loginApi()
  {
    loading.value = true;
    Map data = {
      'email' : emailController.value.text,
      'password' : passController.value.text,
    };
    _api.loginApi(data).then((value){
      if(value['error']=='user not found')
        {
          Utils.snackbar('Login', value['error']);
        }
      else
        {
          UserModel userModel = UserModel(
            token: value['token'],
            isLogin: true,
          );
          userPreference.saveUser(userModel).then((value){
            Get.toNamed(RoutesName.homeView);

          }).onError((error,stackTrace){

          });
          Utils.snackbar('Login', "successfully Logged in");
        }
      loading.value = false;

    }).onError((error,stackTrace){
      print(error.toString());
      loading.value = false;
      Utils.snackbar('Error', error.toString());
    });

  }


}