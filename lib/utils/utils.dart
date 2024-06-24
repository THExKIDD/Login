import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:login/resources/colors/app_color.dart';

class Utils
{

  static void fieldFocusChange(BuildContext context, FocusNode current , FocusNode nextFocus)
  {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

static toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
      backgroundColor: AppColor.blackColor,
      gravity: ToastGravity.BOTTOM,


    );

}
static snackbar(String title ,String message)
{
  Get.snackbar(
    title,
    message,

  );
}
}