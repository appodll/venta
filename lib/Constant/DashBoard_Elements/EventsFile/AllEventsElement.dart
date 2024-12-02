import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/eventsProjectElement.dart';

class Alleventselement extends StatelessWidget {
  const Alleventselement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 215,
              width: Get.width - 10,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return EventProjectCard(
                    image: "lib/Asset/tedbir.png",
                    description: "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
                    title: "Lorem Ipsum",
                    reviews: '4,6',
                    views: '415',
                  );
              },),
            );
  }
}