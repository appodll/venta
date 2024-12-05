import 'package:flutter/material.dart';
import 'package:venta/Constant/SearchScreen_Elements/SearchScreenHeaderFile/SearchScreenHeader.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),

            Searchscreenheader(),


          ],
        ),
      ),
    );
  }
}