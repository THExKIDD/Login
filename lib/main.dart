import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/data/response/routes/routes.dart';
import 'package:login/resources/getx_localization/languages.dart';
import 'package:login/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('hn', 'IN'),
      fallbackLocale: Locale('en', 'US'),
      getPages: AppRoutes.appRoute(),


    );
  }
}