import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/StaticText.dart';

class Chatscreenheader extends StatelessWidget {
  const Chatscreenheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("lib/Asset/back.png"))),
                      ),
                    ),
                    Row(
                      children: [
                        Statictext(
                          text: "Venta Company",
                          size: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        
                      ],
                    ),
                    Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("lib/Asset/venta_chatLogo.png"))
                  ),
                ),
                  ],
                ),
              );
  }
}