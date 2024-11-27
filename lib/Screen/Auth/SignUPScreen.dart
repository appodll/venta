import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:cool_dropdown/options/dropdown_options.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';
import 'package:flutter_toggle_button/flutter_toggle_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/ButtonElement.dart';
import 'package:venta/Constant/CheckBoxElement.dart';
import 'package:venta/Constant/InputElement.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Constant/ToggleElement.dart';
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

  final TextEditingController fin_code = TextEditingController();
  final TextEditingController seria = TextEditingController();
  final TextEditingController voen = TextEditingController();

  @override
  void initState() {
     segmentController.addListener(() {
      setState(() {
        segmentTitle = segmentController.value;
        fin_code.clear();
        seria.clear();
        voen.clear();
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
            Statictext(text: "Xoş gəldiniz!", size: 20, fontWeight: FontWeight.w600),
            SizedBox(height: 15,),

            Statictext(
            text: "Qeydiyyatdan keç, yeni vakansiyalardan  \nilk sən xəbərdar ol!", 
            size: 15.5, 
            fontWeight: FontWeight.w500,
            letterspacing: 0,
            align: TextAlign.center,),

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
                    child: Toggleelement(
                      controller: segmentController, 
                      inactiveColor: Color.fromRGBO(231, 52, 110, 1), 
                      sliderColor: Color.fromRGBO(231, 52, 110, 1), 
                      segments: {
                        'Müştəri': 'Müştəri',
                        'Partnyor': 'Partnyor',
                      }
                                ),
                  ),
                  
                  segmentTitle == "Müştəri"?Column(
                    children: [
                      SizedBox(height: 35,),
                      Inputelement(
                        label: "İdentifikasiya nömrəsi", 
                        suffixIcon: Image.asset("lib/Asset/Vector.png",), 
                        controller: fin_code,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(7)
                        ],
                        onChanged: (value){
                          setState(() {
                            fin_code.text = value.toUpperCase();
                            fin_code.selection = TextSelection.collapsed(offset: fin_code.text.length);
                          });
                        },
                        ),
                      SizedBox(height: 20,),
                      Inputelement(
                        label: "Seriya nömrəsi", 
                        suffixIcon: Image.asset("lib/Asset/Vector.png",), 
                        controller: seria
                        )
                    ],
                  ):Column(
                    children: [
                      SizedBox(height: 35,),
                  Inputelement(
                        label: "İdentifikasiya nömrəsi", 
                        suffixIcon: Image.asset("lib/Asset/Vector.png",), 
                        controller: fin_code,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(7)
                        ],
                        onChanged: (value){
                          setState(() {
                            fin_code.text = value.toUpperCase();
                            fin_code.selection = TextSelection.collapsed(offset: fin_code.text.length);
                          });
                        },
                        ),
                        SizedBox(height: 20,),
                        Inputelement(
                              label: "VÖEN nömrəsi", 
                              suffixIcon: Image.asset("lib/Asset/Vector.png",), 
                              controller: voen
                              ),
                        SizedBox(height: 20,),
                        Inputelement(
                              label: "Seriya nömrəsi", 
                              suffixIcon: Image.asset("lib/Asset/Vector.png",), 
                              controller: seria
                              )
                    ],
                  ),
                  SizedBox(height: 25,),

                  Buttonelement(onPressed: (){
                      Get.to(OTPScreen(
                        booll: true,
                      ), transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
                    }, title: "Kod göndər"),
                  
                  SizedBox(height: 17,),
                  Container(
                    width: Get.width - 30,
                    child: Row(
                      children: [
                        Checkboxelement(
                          value: isChecked, 
                          onChange: (val) {
                            setState(() {
                              isChecked = val;
                            });
                          },),
                        
                        SizedBox(width: 3,),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Get.to(Privacypolicyscreen());
                            },
                            child: Statictext(text: "Qaydalar və şərtlərlə tanış oldum və onları qəbul edirəm.", 
                            size: 13, 
                            fontWeight: FontWeight.w500,
                            letterspacing: 0,
                            align: TextAlign.start,
                            color: Color.fromRGBO(151, 154, 160, 1),
                            overflow: TextOverflow.visible,
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),

                  Buttonelement(onPressed: (){
                      Get.off(SignInScreen(), transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
                    }, title: "Daxil ol",
                    backgroundColor: Color.fromRGBO(241, 128, 165, 1),),
                  
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