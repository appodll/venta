import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:cool_dropdown/options/dropdown_options.dart';
import 'package:cool_dropdown/options/result_options.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/ButtonElement.dart';
import 'package:venta/Constant/CheckBoxElement.dart';
import 'package:venta/Constant/InputElement.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Constant/language_selected.dart';
import 'package:venta/Controller/Auth.dart';
import 'package:venta/Controller/Stroge.dart';
import 'package:venta/Screen/Auth/OTPScreen.dart';
import 'package:venta/Screen/Auth/SignUPScreen.dart';
import 'package:venta/Theme/ThemeService.dart';

class SignInScreen extends StatefulWidget {
  
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool errorBool = true;
  final _auth = Get.put(AuthController());
  final _stroge = Get.put(Stroge());
  var controller_dropdown = DropdownController();
  final field_controller = TextEditingController();

  @override
  void initState() {
    _stroge.save_Data("LGScreen", true, "bool");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(()=>
        SingleChildScrollView(
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
              Statictext(text: "Xoş gəldiniz!", size: 20, fontWeight: FontWeight.w600,),
              SizedBox(height: 15,),
              Statictext(text: "Təlim, tədris və karyera hədəfləriniz \nburada reallaşır.", size: 15.5, fontWeight: FontWeight.w500,align: TextAlign.center,),
              SizedBox(height: 130,),
              Container(
                width: Get.width,
                
                decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 247, 248, 1),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  
                  children: [
                    SizedBox(height: 25,),
                    Statictext(text: "Fin kod ilə daxil ol", size: 18, fontWeight: FontWeight.w500, font_type: 'lato',),
                    SizedBox(height: 35,),

                    Inputelement(
                      label: 'İdentifikasiya nömrəsi', 
                      suffixIcon: Image.asset("lib/Asset/Vector.png",), 
                      controller: field_controller, 
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(7)
                      ],
                      onChanged: (value){
                      setState(() {
                        field_controller.text = value.toUpperCase();
                        field_controller.selection = TextSelection.collapsed(offset: field_controller.text.length);
                            if (value.length < 7) {
                                errorBool = true;
                            } else {
                                errorBool = false;
                              }
                        });
                    },),

                    SizedBox(height: 17,),
                    Container(
                      width: Get.width - 30,
                      child: Row(
                        children: [

                          Checkboxelement(
                            value: _auth.isChecked.value, 
                            onChange: (val) {
                              setState(() {
                                _auth.isChecked.value = val;
                                
                              });
                            },),
                          
                          SizedBox(width: 3,),
                          
                          Statictext(text: "Məni yadda saxla", size: 13, fontWeight: FontWeight.w500,color: Color.fromRGBO(151, 154, 160, 1),)
                        ],
                      ),
                    ),
                    SizedBox(height: 17,),

                    Buttonelement(
                      font_size: 20,
                      onPressed: errorBool == false?(){
                      Get.to(
                        OTPScreen(booll: false,
                        ), transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
                    }:null, 
                    title: "Kod göndər",
                    backgroundColor: errorBool == false?primarycolor:Color.fromRGBO(231, 52, 110, 0.6),
                    ),
                    
                      SizedBox(height: 25,),

                      Buttonelement(
                        font_size: 20,
                        onPressed: (){
                        Get.to(Signupscreen(), transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                      }, 
                      title: "Qeydiyyatdan keç",
                      backgroundColor: primarycolor,
                      ),

                      SizedBox(
                        height: 30, 
                  ),
        
                      GestureDetector(
                        onTap: (){},
                        child: Statictext(text: "Qonaq olaraq davam et", size: 15, fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(102, 102, 102, 1),),),
                        SizedBox(height: 15,),
                        
                  ],
                ),
              )
            ],
          ),
        ),
                ),
      ),
    );
  }
}
