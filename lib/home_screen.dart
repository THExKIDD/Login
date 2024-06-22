import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/login_controller.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 50),

            Obx( () {
              return InkWell(
                onTap: () {
                  controller.lognApi();
                },
                child: controller.loading.value ? CircularProgressIndicator() : Container(
                  height: 45,
                  color: Colors.green,
                  child: Center(
                    child: Text('Login'),
                  ),
                ),
              );
            }
            ),
          ],
        ),
      ),


    );
  }
}
