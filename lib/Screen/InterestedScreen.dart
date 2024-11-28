import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/ButtonElement.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Constant/TagButtonElement.dart';
import 'package:venta/Constant/language_selected.dart';
import 'package:venta/Controller/Stroge.dart';
import 'package:venta/Screen/View/HomeScreen.dart';

class Interestedscreen extends StatefulWidget {
  const Interestedscreen({super.key});

  @override
  State<Interestedscreen> createState() => _InterestedscreenState();
}

class _InterestedscreenState extends State<Interestedscreen> {
  final _stroge = Get.put(Stroge());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LanguageSelected(),
                  Row(
                    children: [
                      Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/Asset/venta logo.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 80,)
                    ],
                  ),
                  Container()
                  
                ],
              ),
                        SizedBox(height: 5,),
                
                      ],
                    ),
                  ),
                       SizedBox(height: 30,),
            Center(
                  child: Container(
                    height: 255,
                    width: Get.width - 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/Asset/İllustrasiya interested.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 35,),

                Statictext(text: "Xoş gəldin! \nSəni aramızda görməkdən məmnunuq.", size: 16, fontWeight: FontWeight.w600,font_type: "notoSans",align: TextAlign.center,),
                
                SizedBox(height: 35,),

                 Tagbuttonelement(),

                GestureDetector(onTap: ()async{

                Get.offAll(HomeScreen(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                _stroge.save_Data("user", true, 'bool');
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Növbəti", style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  Icon(Icons.chevron_right_sharp,
                  size: 35,
                  color: Color.fromRGBO(231, 52, 110, 1),)
                ],
              )),  
              SizedBox(height: 15,)
                  ],
          ),
        ),
      ),
    );
  }
}