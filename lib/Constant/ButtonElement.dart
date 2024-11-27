import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttonelement extends StatelessWidget {
  final void Function()? onPressed;
  final title;
  final backgroundColor;
  final width;
  final height;

  Buttonelement(
      {
      required this.onPressed,
      required this.title,
      this.backgroundColor = const Color.fromRGBO(231, 52, 110, 1),
      this.width = 0.0,
      this.height = 55.0
      });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: GoogleFonts.poppins(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
      ),
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(width == 0.0?Get.width - 50:width, height)),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
