import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/language_selected.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';

class Ventalgscreen extends StatelessWidget {
  final title;
  final image;
  final back_bool;
  final void Function() function;
  final void Function()? back_function;
  const Ventalgscreen({super.key, 
  required this.title, 
  required this.image,
  required this.function,
  this.back_function,
  this.back_bool
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LanguageSelected(),
                    ElevatedButton(
                    onPressed: (){
                      Get.offAll(SignInScreen(),transition: Transition.fade,
                duration: Duration(milliseconds: 500));
                    }, 
                    child: Text("Keç",style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        
                      ),),
                    style: ButtonStyle(
                      
                      minimumSize: WidgetStatePropertyAll(Size(80, 45)),
                      backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(231, 52, 110, 1)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                    ),
                    
                    )
                  ],
                ),
                SizedBox(height: 5,),
          Center(
                child: Container(
                  height: 55,
                  width: Get.width - 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Asset/venta logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
                ],
              ),
            ),
          
              Center(
                child: Container(
                  height: 300,
                  width: Get.width - 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(),
              back_bool == null?Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: back_function, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 15,),
                  Icon(Icons.chevron_left_sharp,
                  size: 35,
                  color: Color.fromRGBO(231, 52, 110, 1),),
                  Text("Əvvəlki", style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  
                ],
              )),
                  GestureDetector(onTap: function, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Növbəti", style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  Icon(Icons.chevron_right_sharp,
                  size: 35,
                  color: Color.fromRGBO(231, 52, 110, 1),),
                   SizedBox(width: 15,),
                ],
              )),
                ],
              ):GestureDetector(onTap: function, child: Row(
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
              SizedBox(),
              
          ],
        ),
      ),
    );
  }
}
