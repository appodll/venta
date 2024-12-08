import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:venta/Constant/ButtonElement.dart';
import 'package:venta/Constant/InputElement.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuCategoryFile/GoogleMap.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuCategoryFile/MenuCategoryScreenHeader.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuCategoryFile/MenuCheckBoxElement.dart';

class Menucategoryscreen extends StatefulWidget {
  final category_title;
  final type;

  Menucategoryscreen(
      {super.key, required this.category_title, required this.type});

  @override
  State<Menucategoryscreen> createState() => _MenucategoryscreenState();
}

class _MenucategoryscreenState extends State<Menucategoryscreen> {
  

  var category_list = [
    "İşçi",
    "Lorem ipsum",
    "Lorem ipsum",
    "Lorem ipsum",
    "Lorem ipsum",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Buttonelement(
            onPressed: () {},
            title: "Tətbiq et",
            font_size: 18,
            height: 50.0,
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Menucategoryscreenheader(category_title: widget.category_title),
            SizedBox(
              height: 20,
            ),

            widget.type == "Ünvan"?
            
            Container(
              height: 45,
              child: Inputelement(
                    border_radius: 10,
                    label_color: Color.fromRGBO(102, 102, 102, 1),
                    border_color: Color.fromRGBO(45, 45, 45, 1),
                    label: "Məntəqə seçin",
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.search, size: 20)),
                    controller: TextEditingController(),
                  ),
            ):Container(),


          //////////////////////////////////////////      
            widget.type == "Yaş" ||
                    widget.type == "Boy" ||
                    widget.type == "Əmək haqqı"
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: Get.width / 2.3,
                                child: Inputelement(
                                    label: 'Minimum',
                                    suffixIcon: Image.asset(
                                      "lib/Asset/manat.png",
                                      scale: 1.5,
                                    ),
                                    controller: TextEditingController())),
                            Container(
                                width: Get.width / 2.3,
                                child: Inputelement(
                                    label: 'Maksimum',
                                    suffixIcon: Image.asset(
                                      "lib/Asset/manat.png",
                                      scale: 1.5,
                                    ),
                                    controller: TextEditingController()))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  )
                : Container(),
            widget.type != "Ünvan"
                ? Expanded(
                    child: ListView.builder(
                    itemCount: category_list.length,
                    itemBuilder: (context, index) {
                      return Menucheckboxelement(title: category_list[index]);
                    },
                  ))
                : Googlemap()
          ],
        ),
      ),
    );
  }
}
