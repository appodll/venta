import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/InputElement.dart';

class Searchscreenheader extends StatelessWidget {
  const Searchscreenheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("lib/Asset/back.png"))),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: Container(
                              height: 44,
                              child: Inputelement(
                                border_radius: 10,
                                label_color: Color.fromRGBO(102, 102, 102, 1),
                                border_color: Color.fromRGBO(45, 45, 45, 1),
                                label: "Araşdır və kəşf et", 
                                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 20,)), 
                                controller: TextEditingController()
                                ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("lib/Asset/filter.png"))),
                          ),
                        ),
                ],
              ),
            );
  }
}