import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../StaticText.dart';

class Contentpageheader extends StatelessWidget {
  const Contentpageheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.all(10),
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
                          text: "Xəbərlər",
                          size: 24,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: 35,
                        )
                      ],
                    ),
                    Container()
                  ],
                ),
              );
  }
}