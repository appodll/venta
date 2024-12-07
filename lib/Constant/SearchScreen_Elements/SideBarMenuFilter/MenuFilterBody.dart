import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuCategoryFile/MenuCategoryScreen.dart';
import 'package:venta/Constant/StaticText.dart';

class Menufilterbody extends StatelessWidget {
  var category_list = [
    "Kateqoriya",
    "Təcrübəçi",
    "Boy",
    "Yaş",
    "Əmək haqqı",
    "Yerləşmə yeri",
    "Turlar",
    "Ünvan"
  ];

  Menufilterbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: category_list.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Statictext(
                    text: category_list[index],
                    size: 17,
                    fontWeight: FontWeight.w500,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {
                      Get.to(
                          Menucategoryscreen(
                            category_title: category_list[index],
                            type: category_list[index],
                          ),
                          transition: Transition.rightToLeft,
                          duration: Duration(milliseconds: 300));
                    },
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/Asset/filter_right.png"))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black,
            )
          ],
        );
      },
    ));
  }
}
