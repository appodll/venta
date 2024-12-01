import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/CategoryElement.dart';

class Allcategoryelement extends StatelessWidget {
  var category_list = [
    "Təlim proqramları",
    "Xəbərlər",
    "Karyera məsləhətləri",
    "İmtahanlar",
    "Təcrübə proqramları",
    "Online dərslər",
    "Sertifikat imkanları",
    "Vakansiyalar",
    "Uğur hekayələri",
    "Mentorluq proqramları",
    "Səyahət imkanları",
    "İnteraktiv oyunlar",
  ];
  Allcategoryelement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 30,
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category_list.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Column(children: [
                SizedBox(
                  height: 5,
                ),
                Categoryelement(
                  onTap: (){

                  },
                  title: category_list[index],
                ),
                SizedBox(
                  height: 5,
                ),
              ]),
              SizedBox(width: 15,)
              
              ],
          );
        },
      ),
    );
  }
}
