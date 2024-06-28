import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/resources/components/round_button.dart';
import 'package:login/utils/utils.dart';
import 'package:login/view_models/Controller/login/login_view_model.dart';

class loginView extends StatefulWidget {
  const loginView({super.key});

  @override
  State<loginView> createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'.tr),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: loginVM.emailController.value,
                  focusNode: loginVM.emailFocusNode.value,
                  validator: (value){
                    if(value!.isEmpty)
                      {
                        Utils.snackbar('Email', 'Enter Email');
                      }
                  },
                  onFieldSubmitted: (value){
                    Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passFocusNode.value);
                  },
                  decoration: InputDecoration(
                    hintText: 'email_hint'.tr,
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: loginVM.passController.value,
                  focusNode: loginVM.passFocusNode.value,
                  validator: (value){
                    if(value!.isEmpty)
                    {
                      Utils.snackbar('Password', 'Enter Password');
                    }
                  },
                  decoration: InputDecoration(
                      hintText: 'pass_hint'.tr,
                      border: OutlineInputBorder()
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Obx(() => RoundButton(
              loading: loginVM.loading.value,
                title: 'login'.tr,
                onPress: (){
                  if(_formkey.currentState!.validate())
                    {
                      loginVM.loginApi();
                    }
                },
            width: 200),
          ),
        ],
      ),
    );
  }
}
