import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/data/app_exceptions.dart';
import 'package:login/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email hint'.tr),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          Utils.toastMessage('tarun');
        },
      ),
    );
  }
}
