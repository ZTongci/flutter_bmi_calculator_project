import 'package:flutter/material.dart';
import '../constants.dart';


class iccontent extends StatelessWidget {
  final String textIcons;
  final IconData fontIcons;
  final Color Textcolors;

  iccontent({this.fontIcons, this.textIcons, this.Textcolors});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(fontIcons, size: 80, color: Colors.white70),
        SizedBox(
          height: 15,
        ),
        Text(
          textIcons,
          style: ktextstyle
        )
      ],
    );
  }
}
