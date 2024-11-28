import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/StaticText.dart';

class Newselement extends StatelessWidget {
  final description;
  final views;
  final image;
  const Newselement({
  required this.description, 
  required this.views, 
  required this.image, });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                      transform: GradientRotation(20),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Statictext(text: description, size: 13, overflow: TextOverflow.visible,
                        color: Colors.white,)
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Container(
                                height: 18,
                                child: Image.asset("lib/Asset/izlenme.png")),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              views,
                              style: GoogleFonts.poppins(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
