import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Theme/ThemeService.dart';

class Categoryheader extends StatelessWidget {
  final category_title;
  final button_title;
  final void Function() onPress;

  const Categoryheader({
  required this.category_title, 
  required this.button_title, 
  required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Statictext(text: category_title, size: 18, fontWeight: FontWeight.w600,color: primarycolor,),
                    Row(
                      children: [
                        
                        Statictext(text: button_title, size: 18),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: onPress,
                          child: Image.asset("lib/Asset/right.png",scale: 1.7,),
                        )
                      ],
                    )
                  ],
                ),
              );
  }
}