
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/resources/colors/app_color.dart';

class GeneralExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  const GeneralExceptionWidget({super.key, required this.onPress});

  @override
  State<GeneralExceptionWidget> createState() => _GeneralExceptionWidgetState();
}

class _GeneralExceptionWidgetState extends State<GeneralExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(padding:
    EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: height * .15),
          Icon(Icons.cloud_off , color: Colors.red),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Center(child: Text('general_exception'.tr)),
          ),
          SizedBox(height: height * .15),


          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Center(child: Text('Retry', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
