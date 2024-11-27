import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/KeyboardElement.dart';
import 'package:venta/Constant/PinInputElement.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Constant/language_selected.dart';
import 'package:venta/Screen/InterestedScreen.dart';
import 'package:venta/Screen/View/HomeScreen.dart';
import '../../Controller/Auth.dart';
import '../../Controller/Stroge.dart';

class OTPScreen extends StatefulWidget {
  final booll;
  const OTPScreen({super.key, required this.booll});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _auth = Get.put(AuthController());
  final _stroge = Get.put(Stroge());

  final TextEditingController code = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
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
                ),
                SizedBox(height: 90,),
                Statictext(text: "Doğrulama kodunu daxil edin", size: 22, fontWeight: FontWeight.w600, align: TextAlign.center,),
                SizedBox(height: 25,),
                Statictext(text: "+994 55 555 55 55 nömrəsinə kod göndərildi", size: 14, fontWeight: FontWeight.w500, align: TextAlign.center,),
                SizedBox(height: 30,),
              ],
            ),
            Pininputelement(
              controller: code, 
              onCompleted: (value) {
                    if(widget.booll){
                      
                      Get.off(Interestedscreen(),transition: Transition.fadeIn,duration: Duration(milliseconds: 500));
                    }else{
                      Get.offAll(HomeScreen(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                      if(_auth.isChecked.value){
                          _stroge.save_Data(
                            "user", true, "bool"
                          );
                        }
                    }
                  }),
    
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Statictext(text: "Kod almamısız?", size: 14, fontWeight: FontWeight.w500),

                          TextButton(onPressed: (){}, child: Text("Yenidən göndər",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color.fromRGBO(75, 56, 252, 1),
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Color.fromRGBO(75, 56, 252, 1),
                            )
                          ),)),
                          
                        ],
                      ),
                      Container(
                        width: Get.width - 80,
                        child: Divider(
                          thickness: 2,
                          color: Color.fromRGBO(231, 52, 110, 0.6),
                        ),
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 20,),
                  
                  Keyboardelement(code: code), //keyboard

                  Container()
                          
                          ],
        ),
      ),
    );
  }
}