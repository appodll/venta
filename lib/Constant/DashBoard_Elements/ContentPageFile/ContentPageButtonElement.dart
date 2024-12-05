import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/ButtonElement.dart';

class Contentpagebuttonelement extends StatelessWidget {
  final title;
  final icon;
  final void Function() onPress;
  const Contentpagebuttonelement({super.key, required this.title, required this.icon, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 8,
                offset: Offset(5, 5),
              ),
            ]),
            child: Buttonelement(
              child: Padding(
                padding: EdgeInsets.only(left: 8),
                child: Container(
                  height: 27,
                  width: 27,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(icon))),
                ),
              ),
              onPressed: onPress,
              title: title,
              font_size: 17,
              width: Get.width - 180,
              height: 44.0,
            ),
          ),
          SizedBox(
            height: 15,
          )
        ],
      );
  }
}