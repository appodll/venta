import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/ContentPage.dart';
import 'package:venta/Constant/DashBoard_Elements/NewsFile/NewsElement.dart';

class Allnewselement extends StatelessWidget {
  const Allnewselement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 228,
              width: Get.width - 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: PageView.builder(
                
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: GestureDetector(
                      onTap: (){
                        Get.to(Contentpage(id: index,),transition: Transition.fadeIn,duration: Duration(milliseconds: 300));
                      },
                      child: Newselement(
                                      description: "Prezident İlham Əliyev Təhsil Sektorunda Yeni İslahatları Təsdiqlədi.",
                                      image: "lib/Asset/ilham.jpg",
                                      views: "24",
                                    ),
                    ),
                  );
              },),
            );
  }
}