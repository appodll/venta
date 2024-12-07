import 'package:flutter/material.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuCategoryFile/MenuCategoryScreenHeader.dart';

class Menucategoryscreen extends StatelessWidget {
  final category_title;
  Menucategoryscreen({super.key, required this.category_title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Menucategoryscreenheader(category_title: category_title)
          ],
        ),
      ),
    );
  }
}