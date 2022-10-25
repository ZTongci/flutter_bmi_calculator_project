import 'package:flutter/material.dart';

class ufcard extends StatelessWidget {
  final Color Boxcolor;
  final Widget child;
  final Function Judge;

  ufcard({this.Boxcolor, this.child,this.Judge});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:this.Judge,
        child:Container(
      child: this.child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: this.Boxcolor, borderRadius: BorderRadius.circular(10)),
    )
    );

  }
}
