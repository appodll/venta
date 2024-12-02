import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonelement extends StatelessWidget {
  final void Function()? onPressed;
  final title;
  final backgroundColor;
  final width;
  final height;
  final type;
  final side;
  final text_color;
  final double font_size;
  final double padding;
  final font_weight;

  Buttonelement(
      {required this.onPressed,
      required this.title,
      this.backgroundColor = const Color.fromRGBO(231, 52, 110, 1),
      this.width = 0.0,
      this.height = 55.0,
      this.type = 'elevated',
      this.side,
      this.text_color,
      this.font_size = 12.0,
      this.padding = 16.0,
      this.font_weight = FontWeight.w500
      });

  @override
  Widget build(BuildContext context) {
    return type == 'elevated'
        ? ElevatedButton(
            onPressed: onPressed,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(
                  Size(width == 0.0 ? Get.width - 50 : width, height)),
              backgroundColor: WidgetStatePropertyAll(backgroundColor),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
            ),
          )
        : type == 'outlined'
            ? OutlinedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: padding, vertical: 10),
                  side: side,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: backgroundColor,
                  
                ),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: text_color,
                    fontSize: font_size,
                    fontWeight: font_weight,
                  ),
                ),
              )
            : Container();
  }
}
