import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Inputelement extends StatelessWidget {
  final label;
  final suffixIcon;
  final controller;
  final void Function(String)? onChanged;
  final inputFormatters;

  Inputelement(
      {required this.label,
      required this.suffixIcon,
      required this.controller,
      this.inputFormatters,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 50,
      child: TextField(
        inputFormatters: inputFormatters,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            labelText: label,
            labelStyle: GoogleFonts.poppins(
                fontSize: 14,
                color: Color.fromRGBO(151, 154, 160, 1),
                fontWeight: FontWeight.w500,
                letterSpacing: 0),
            floatingLabelStyle: GoogleFonts.poppins(
              fontSize: 18,
              color: Color.fromRGBO(231, 52, 110, 1),
              fontWeight: FontWeight.w500,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color.fromRGBO(231, 52, 110, 1))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    BorderSide(color: Color.fromRGBO(231, 52, 110, 1)))),
      ),
    );
  }
}
