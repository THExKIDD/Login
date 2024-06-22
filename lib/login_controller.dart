import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  RxBool loading = false.obs;

  void lognApi()async
  {
    loading.value =true;
    try
    {
      final response = await post(Uri.parse('https://reqres.in/api/register'),
          body: {
            'email' : emailController.value.text,
            'password' : passwordController.value.text,
          },
          headers: {
        'authority' : 'ndfh'
          }
      );
      var data = jsonDecode(response.body);
      if(response.statusCode == 200)
      {
        loading.value = false;
        Get.snackbar('Login Successfull', 'Congrats');

      }
      else {
        loading.value = false;
        Get.snackbar('Login Failed', data['error']);
      }
    }
    catch(e)
    {
      loading.value = false;
      Get.snackbar('Exception', e.toString());
    }
  }


  }

