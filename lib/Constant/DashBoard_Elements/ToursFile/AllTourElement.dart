import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/eventsProjectElement.dart';

class Alltourelement extends StatelessWidget {
  var proje = [
    {
      "proje_type" : "tour",
      "image" : "lib/Asset/şuşa.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo.png",
      "participants" : "90"
    },
    {
      "proje_type" : "tour",
      "image" : "lib/Asset/tur2.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo2.png",
      "participants" : "215"
    },
    {
      "proje_type" : "tour",
      "image" : "lib/Asset/şuşa.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo.png",
      "participants" : "25"
    },
    {
      "proje_type" : "tour",
      "image" : "lib/Asset/tur2.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo2.png",
      "participants" : "2"
    },

  ];
  Alltourelement({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 215,
              width: Get.width - 10,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: proje.length,
                itemBuilder: (context, index) {
                  return EventProjectCard(
                    proje_owner_logo: proje[index]["proje_owner_logo"],
                    proje_type: proje[index]["proje_type"],
                    type: 'tour',
                    image: proje[index]["image"],
                    description: proje[index]["description"],
                    title: proje[index]["title"],
                    reviews: proje[index]["reviews"],
                    views: proje[index]["views"],
                    participants: proje[index]["participants"],
                  );
              },),
            );
  }
  }