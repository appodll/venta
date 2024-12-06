import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menufilter extends StatelessWidget {
  const Menufilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          width: Get.width - 70,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8)
            ),
            side: BorderSide(
              color: Colors.black
            )
          ),
        );
  }
}