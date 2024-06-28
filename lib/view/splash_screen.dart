import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/data/app_exceptions.dart';
import 'package:login/resources/components/internet_exception_widget.dart';
import 'package:login/resources/components/round_button.dart';
import 'package:login/utils/utils.dart';
import 'package:login/view_models/services/splash_services.dart';

import '../resources/components/general_exception.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text('welcome_back'.tr,textAlign: TextAlign.center,),),
    );
  }
}
