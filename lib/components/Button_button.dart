import 'package:flutter/material.dart';

class Button_button extends StatelessWidget {
  Button_button({@required this.buttontext,@required this.ontap});
  final String buttontext;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Center(
            child: Text(
              buttontext
              ,
              style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        color: Colors.red,
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}