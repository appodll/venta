import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Theme/ThemeService.dart';

class Categoryheader extends StatelessWidget {
  final category_title;
  final button_title;
  final category_title_color;
  final type;
  final void Function()? onPress;

  const Categoryheader({
  required this.category_title, 
  this.button_title, 
  this.onPress,
  this.type,
  this.category_title_color = primarycolor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Statictext(text: category_title, size: 18, fontWeight: FontWeight.w600,color: category_title_color,),
                    type != 'search_category'?Row(
                      children: [
                        
                        Statictext(text: button_title, size: 18),
                        SizedBox(width: 15,),
                        GestureDetector(
                          onTap: onPress,
                          child: Image.asset("lib/Asset/right.png",scale: 1.7,),
                        )
                      ],
                    ):Container()
                  ],
                ),
              );
  }
}