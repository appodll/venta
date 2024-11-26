import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:cool_dropdown/options/dropdown_options.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:flutter_toggle_button/flutter_toggle_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/language_selected.dart';
import 'package:venta/Screen/Auth/OTPScreen.dart';
import 'package:venta/Screen/Auth/PrivacypolicyScreen.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  final ValueNotifier<String> segmentController = ValueNotifier<String>("Müştəri");
  bool isChecked = false;
  String segmentTitle = "Müştəri";
  var controller_dropdown = DropdownController();

  @override
  void initState() {
     segmentController.addListener(() {
      setState(() {
        segmentTitle = segmentController.value;
      });
    
  });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: SafeArea(
        child: Column(
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
            SizedBox(height: 80,),
            Text("Xoş gəldiniz!",style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 15,),
            Text("Qeydiyyatdan keç, yeni vakansiyalardan  \nilk sən xəbərdar ol!",style: GoogleFonts.poppins(
              fontSize: 15.5,
              fontWeight: FontWeight.w500,
              letterSpacing: 0
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 30,),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 248, 1),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Center(
        child: Container(
          width: Get.width - 50, 
          height: 60, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), 
            
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8, 
              ),
            ],
          ),
          child: AdvancedSegment(
            borderRadius: BorderRadius.circular(10),
            
            controller: segmentController,
            segments: {
              'Müştəri': 'Müştəri',
              'Partnyor': 'Partnyor',
            },
            activeStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 18, 
            ),
            inactiveStyle: GoogleFonts.poppins(
              color: Color.fromRGBO(231, 52, 110, 1),
              fontSize: 18,
            ),
            backgroundColor: Colors.white,
            sliderColor: Color.fromRGBO(231, 52, 110, 1),
            
            
          ),
        ),
      ),
                  segmentTitle == "Müştəri"?Column(
                    children: [
                      SizedBox(height: 35,),
                  Container(
                    width: Get.width - 50,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset("lib/Asset/Vector.png",),
                        
                        labelText: "İdentifikasiya nömrəsi",
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color.fromRGBO(151, 154, 160, 1),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0
                        ),
                        floatingLabelStyle: GoogleFonts.poppins(
                          fontSize: 18, 
                          color: Color.fromRGBO(231, 52, 110, 1), 
                          fontWeight: FontWeight.w500,
                        ),
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: Get.width - 50,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset("lib/Asset/Vector.png",),
                        
                        labelText: "Seriya nömrəsi",
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color.fromRGBO(151, 154, 160, 1),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0
                        ),
                        floatingLabelStyle: GoogleFonts.poppins(
                          fontSize: 18, 
                          color: Color.fromRGBO(231, 52, 110, 1), 
                          fontWeight: FontWeight.w500,
                        ),
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        )
                      ),
                    ),
                  ),
                    ],
                  ):Column(
                    children: [
                      SizedBox(height: 35,),
                  Container(
                    width: Get.width - 50,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset("lib/Asset/Vector.png",),
                        
                        labelText: "İdentifikasiya nömrəsi",
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color.fromRGBO(151, 154, 160, 1),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0
                        ),
                        floatingLabelStyle: GoogleFonts.poppins(
                          fontSize: 18, 
                          color: Color.fromRGBO(231, 52, 110, 1), 
                          fontWeight: FontWeight.w500,
                        ),
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: Get.width - 50,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset("lib/Asset/Vector.png",),
                        
                        labelText: "VÖEN nömrəsi",
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color.fromRGBO(151, 154, 160, 1),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0
                        ),
                        floatingLabelStyle: GoogleFonts.poppins(
                          fontSize: 18, 
                          color: Color.fromRGBO(231, 52, 110, 1), 
                          fontWeight: FontWeight.w500,
                        ),
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: Get.width - 50,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Image.asset("lib/Asset/Vector.png",),
                        
                        labelText: "Seriya nömrəsi",
                        labelStyle: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color.fromRGBO(151, 154, 160, 1),
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0
                        ),
                        floatingLabelStyle: GoogleFonts.poppins(
                          fontSize: 18, 
                          color: Color.fromRGBO(231, 52, 110, 1), 
                          fontWeight: FontWeight.w500,
                        ),
                         
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromRGBO(231, 52, 110, 1)
                          )
                        )
                      ),
                    ),
                  ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: (){
                      Get.to(OTPScreen(
                        booll: true,
                      ), transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
                    }, 
                    child: Text("Kod göndər",style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                        
                      ),),
                    style: ButtonStyle(
                      
                      minimumSize: WidgetStatePropertyAll(Size(Get.width - 50, 55)),
                      backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(231, 52, 110, 1)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    ),
                    
                    ),
                  SizedBox(height: 17,),
                  Container(
                    width: Get.width - 30,
                    child: Row(
                      children: [
                        CustomCheckBox(
                          value: isChecked,
                          shouldShowBorder: true,
                          borderColor: Color.fromRGBO(231, 52, 110, 1),
                          checkedFillColor: Color.fromRGBO(231, 52, 110, 1),
                          borderRadius: 7,
                          borderWidth: 2.5,
                          checkBoxSize: 20,
                          onChanged: (val) {
                            setState(() {
                              isChecked = val;
                            });
                          },
                        ),
                        
                        SizedBox(width: 3,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Get.to(Privacypolicyscreen());
                            },
                            child: Text("Qaydalar və şərtlərlə tanış oldum və onları qəbul edirəm.",style: GoogleFonts.poppins(
                              color: Color.fromRGBO(151, 154, 160, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                            ),
                            textAlign: TextAlign.start, 
                            softWrap: true, 
                            overflow: TextOverflow.visible,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: (){
                      Get.off(SignInScreen(), transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
                    }, 
                    child: Text("Daxil ol",style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                        
                      ),),
                    style: ButtonStyle(
                      
                      minimumSize: WidgetStatePropertyAll(Size(Get.width - 50, 55)),
                      backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(241, 128, 165, 1)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    ),
                    
                    ),
                   SizedBox(height: 15,)

                   
                ],
              ),
            )
          ],
        ),
      ),
              ),
    );
  }
}