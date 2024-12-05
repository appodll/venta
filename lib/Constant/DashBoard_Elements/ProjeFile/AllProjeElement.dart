import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/DashBoard_Elements/ContentPageFile/ContentPage.dart';
import 'package:venta/Constant/eventsProjectElement.dart';

class Allprojeelement extends StatelessWidget {
  var proje = [
    {
      "proje_type" : "film",
      "image" : "lib/Asset/lahiye.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo.png",
      "participants" : "25"
    },
    {
      "proje_type" : "music",
      "image" : "lib/Asset/tedbir.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo2.png",
      "participants" : "18"
    },
    {
      "proje_type" : "film",
      "image" : "lib/Asset/lahiye.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo.png",
      "participants" : "25"
    },
    {
      "proje_type" : "music",
      "image" : "lib/Asset/tedbir.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo2.png",
      "participants" : "26"
    },

  ];
  Allprojeelement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 215,
              width: Get.width - 10,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: proje.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                        Get.to(Contentpage(id: index,type: 'proje',),transition: Transition.fadeIn,duration: Duration(milliseconds: 300));
                      },
                    child: EventProjectCard(
                      proje_owner_logo: proje[index]["proje_owner_logo"],
                      proje_type: proje[index]["proje_type"],
                      type: 'proje',
                      image: proje[index]["image"],
                      description: proje[index]["description"],
                      title: proje[index]["title"],
                      reviews: proje[index]["reviews"],
                      views: proje[index]["views"],
                      participants: proje[index]["participants"],
                    ),
                  );
              },),
            );
  }
}