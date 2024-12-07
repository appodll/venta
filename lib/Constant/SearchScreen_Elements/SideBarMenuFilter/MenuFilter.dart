import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuFilterBody.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuFilterHeader.dart';

class Menufilter extends StatelessWidget {
  const Menufilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          width: Get.width - 70,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8)
            ),
            side: BorderSide(
              color: Colors.black
            )
          ),
          child: Column(
            children: [
              SizedBox(height: 10),

              Menufilterheader(),
              
              Menufilterbody()
            ],
          ),
        );
  }
}