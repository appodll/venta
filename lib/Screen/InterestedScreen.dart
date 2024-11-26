import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/language_selected.dart';
import 'package:venta/Screen/View/HomeScreen.dart';

class Interestedscreen extends StatefulWidget {
  const Interestedscreen({super.key});

  @override
  State<Interestedscreen> createState() => _InterestedscreenState();
}

class _InterestedscreenState extends State<Interestedscreen> {
  final _selectedButtons = ["Təlim proqramları","Online dərslər","Vakansiyalar"];

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
                Text("Xoş gəldin! \nSəni aramızda görməkdən məmnunuq.",
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
                
                textAlign: TextAlign.center,),
                SizedBox(height: 35,),
                 Wrap(
                spacing: 3,
                runSpacing: 3,
                children: [
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
                ].map((title) {
                  return OutlinedButton(
                    
                  onPressed: () {
                    setState(() {
                      if(_selectedButtons.contains(title)){
                        _selectedButtons.remove(title);
                      }else{
                        _selectedButtons.add(title);
                      }
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    side: !_selectedButtons.contains(title)?BorderSide(color: Colors.grey, width: 1):BorderSide(color: Color.fromRGBO(231, 52, 110, 1), width: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: !_selectedButtons.contains(title)?Colors.white:Color.fromRGBO(231, 52, 110, 1),
                  ),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: !_selectedButtons.contains(title)?Color.fromRGBO(231, 52, 110, 1):Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
                }).toList(),
              ),
                GestureDetector(onTap: (){
                Get.offAll(HomeScreen(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
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