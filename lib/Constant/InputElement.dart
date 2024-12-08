import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Theme/ThemeService.dart';

class Inputelement extends StatelessWidget {
  final label;
  final suffixIcon;
  final controller;
  final border_color;
  final label_color;
  final void Function(String)? onChanged;
  final inputFormatters;
  final double border_radius;
  final filled_color;
  final filled;
  final double label_font_size;

  Inputelement(
      {required this.label,
      required this.suffixIcon,
      required this.controller,
      this.inputFormatters,
      this.onChanged,
      this.border_color = primarycolor,
      this.label_color = const Color.fromRGBO(151, 154, 160, 1),
      this.border_radius = 12,
      this.filled_color,
      this.filled = false,
      this.label_font_size = 14
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 50,
      child: TextField(
        inputFormatters: inputFormatters,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: filled,
          fillColor: filled_color,
            suffixIcon: suffixIcon,
            labelText: label,
            labelStyle: GoogleFonts.poppins(
                fontSize: label_font_size,
                color: label_color,
                fontWeight: FontWeight.w500,
                letterSpacing: 0),
            floatingLabelStyle: GoogleFonts.poppins(
              fontSize: 18,
              color: border_color,
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(border_radius),
                borderSide: BorderSide(color: border_color)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(border_radius),
                borderSide:
                    BorderSide(color: border_color))),
      ),
    );
  }
}
