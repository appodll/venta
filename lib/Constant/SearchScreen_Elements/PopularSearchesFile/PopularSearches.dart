import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/SearchScreen_Elements/SearchesFile/SearchesElement.dart';

class Popularsearches extends StatelessWidget {
  final double itemHeight = 45; 
  final int itemCount = 3; 
  final void Function()? onPress;
  Popularsearches({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 40,
      height: itemCount * itemHeight, 
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(), 
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return SizedBox(
            height: itemHeight, 
            child: Searcheselement(
              title: "Uğur hekayələri",
              date: "29.09.2024",
              onPress: onPress,
              type: 'popular_search',
              ),
          );
        },
      ),
    );;
  }
}