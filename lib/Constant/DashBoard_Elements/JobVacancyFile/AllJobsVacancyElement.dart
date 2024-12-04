import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/ContentPage.dart';
import 'package:venta/Constant/DashBoard_Elements/JobVacancyFile/JobVacancyElement.dart';

class Alljobsvacancyelement extends StatelessWidget {
  var alljobs_list = [
    {
      "company_logo" : "lib/Asset/venta.png",
      "vacancy_title" : "Pizzamen",
      "price" : "450",
      "company" : "Venta",
      "location" : "Bakı",
      "created_at" : "29.09.2024"
    },
    {
      "company_logo" : "lib/Asset/venta.png",
      "vacancy_title" : "İngilis dili müəllimi",
      "price" : "Razılaşma yolu ilə",
      "company" : "Venta",
      "location" : "Sumqayıt",
      "created_at" : "29.09.2024"
    },
    {
      "company_logo" : "lib/Asset/venta.png",
      "vacancy_title" : "Ethics and Compliance Officer",
      "price" : "550",
      "company" : "Venta",
      "location" : "Bakı",
      "created_at" : "29.09.2024"
    },
  ];

  Alljobsvacancyelement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 200,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: alljobs_list.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        Get.to(Contentpage(id: index,),transition: Transition.fadeIn,duration: Duration(milliseconds: 300));
                      },
                      child: Jobvacancyelement(
                        company_logo: alljobs_list[index]['company_logo'],
                        vacancy_title: alljobs_list[index]['vacancy_title'],
                        price: alljobs_list[index]['price'],
                        company: alljobs_list[index]['company'],
                        location: alljobs_list[index]['location'],
                        created_at: alljobs_list[index]['created_at'],
                      ),
                    );
                },),
              );
  }
}