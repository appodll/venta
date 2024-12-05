import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/DashBoard_Elements/ContentPageFile/ContentPage.dart';
import 'package:venta/Constant/eventsProjectElement.dart';

class Allsuccessprojeelement extends StatelessWidget {
  var proje = [
    {
      "success_proje_title" : "Eyvaz çıqqılı",
      "proje_type" : "tour",
      "image" : "lib/Asset/eyvazcavanliq.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo.png",
      "participants" : "90"
    },
    {
      "success_proje_title" : "Xanış möhtəşəm",
      "proje_type" : "tour",
      "image" : "lib/Asset/eyvazqocaliq.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo2.png",
      "participants" : "215"
    },
    {
      "success_proje_title" : "Eyvaz aue",
      "proje_type" : "tour",
      "image" : "lib/Asset/eyvazcavanliq.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo.png",
      "participants" : "25"
    },
    {
      "success_proje_title" : "Xanış jizvaram",
      "proje_type" : "tour",
      "image" : "lib/Asset/eyvazqocaliq.png",
      "description" : "Lorem İpsum dolar sit amet, con sec tetur adipiscinaskdhhjkasdhjkasdhjkashjkdkhjasdg elit, sed do e",
      "title" : "Lorem Ipsum",
      "reviews" : "4.6",
      "views" : "415",
      "proje_owner_logo" : "lib/Asset/V logo2.png",
      "participants" : "2"
    },

  ];
  Allsuccessprojeelement({super.key});

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
                        Get.to(Contentpage(id: index,type: 'successproje',),transition: Transition.fadeIn,duration: Duration(milliseconds: 300));
                      },
                    child: EventProjectCard(
                      success_proje_title: proje[index]["success_proje_title"],
                      proje_owner_logo: proje[index]["proje_owner_logo"],
                      type: 'success_proje',
                      image: proje[index]["image"],
                      description: proje[index]["description"],
                      title: proje[index]["title"],
                    ),
                  );
              },),
            );
  }
}