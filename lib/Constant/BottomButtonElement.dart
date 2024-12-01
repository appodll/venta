import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/StaticText.dart';

class Bottombuttonelement extends StatelessWidget {
  final void Function() onTap;
  final color;
  final icon;
  final title;

  const Bottombuttonelement(
      {required this.onTap,
      required this.color,
      required this.icon,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage(icon),
            height: 28,
            color: color,
          ),
          SizedBox(
            height: 3,
          ),
          Statictext(text: title, size: 13.5,color: color,),
          
        ],
      ),
    );
  }
}
