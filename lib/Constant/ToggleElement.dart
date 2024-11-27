import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Toggleelement extends StatelessWidget {
  final controller;
  final inactiveColor;
  final sliderColor;
  final Map<String, String> segments;

  Toggleelement(
      {required this.controller,
      required this.inactiveColor,
      required this.sliderColor,
      required this.segments});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 50,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
          ),
        ],
      ),
      child: AdvancedSegment(
        borderRadius: BorderRadius.circular(10),
        controller: controller,
        segments: segments,
        activeStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 18,
        ),
        inactiveStyle: GoogleFonts.poppins(
          color: inactiveColor,
          fontSize: 18,
        ),
        backgroundColor: Colors.white,
        sliderColor: sliderColor,
      ),
    );
  }
}
