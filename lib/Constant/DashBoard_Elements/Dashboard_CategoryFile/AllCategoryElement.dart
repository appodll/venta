import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/DashBoard_Elements/Dashboard_CategoryFile/CategoryElement.dart';

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
    return Row(
      children: [
        Container(
          width: Get.width - 5,
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: category_list.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  SizedBox(width: 5),
                  Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Categoryelement(
                      onTap: () {
                        
                      },
                      title: category_list[index],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
