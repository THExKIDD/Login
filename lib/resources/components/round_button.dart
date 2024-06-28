
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/resources/colors/app_color.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({super.key,this.loading = false, required this.title,this.height = 50, required this.onPress, this.textColor = AppColor.primaryTextColor,this.buttonColor = AppColor.primaryButtonColor,this.width =60});

  final bool loading;
  final String title;
  final double height;
  final double width;
  final VoidCallback onPress;
  final Color textColor ,buttonColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(50),

        ),
        child: loading ? Center(child: CircularProgressIndicator()) :
        Center(
          child: Text(title , style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
          ),
        ),

      ),
    );
  }
}
