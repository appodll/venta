import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statictext extends StatelessWidget {
  final text;
  final double size;
  final fontWeight;
  final color;
  final align;
  final overflow;
  final font_type;
  final double letterspacing;

  Statictext(
      {required this.text,
      required this.size,
      required this.fontWeight,
      this.color = Colors.black,
      this.align = TextAlign.start,
      this.overflow = TextOverflow.visible,
      this.letterspacing = 0,
      this.font_type = 'poppins'});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: font_type == 'poppins'
          ? GoogleFonts.poppins(
              fontSize: size,
              fontWeight: fontWeight,
              color: color,
              letterSpacing: letterspacing)
          : font_type == 'notoSans'
              ? GoogleFonts.notoSans(
                  fontSize: size,
                  fontWeight: fontWeight,
                  color: color,
                  letterSpacing: letterspacing)
              : GoogleFonts.lato(
                  fontSize: size,
                  fontWeight: fontWeight,
                  color: color,
                  letterSpacing: letterspacing),
      textAlign: align,
      overflow: overflow,
    );
  }
}