import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:cool_dropdown/options/dropdown_options.dart';
import 'package:cool_dropdown/options/result_options.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    child: CoolDropdown(
                      dropdownItemOptions: DropdownItemOptions(
                        alignment: Alignment.center,
                        boxDecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color.fromRGBO(231, 52, 110, 1),
                              width: 1.5),
                        ),
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(231, 52, 110, 1),
                          fontWeight: FontWeight.bold,
                        ),
                        selectedTextStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(231, 52, 110, 1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      resultOptions: ResultOptions(
                        render: ResultRender.all,
                        openBoxDecoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(176, 176, 176, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        boxDecoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(176, 176, 176, 1)),
                            borderRadius: BorderRadius.circular(5)),
                        textStyle: TextStyle(
                          color: Color.fromRGBO(231, 52, 110, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromRGBO(231, 52, 110, 1),
                        ),
                      ),
                      dropdownOptions: DropdownOptions(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      dropdownList: [
                        CoolDropdownItem(label: 'Az', value: 'az'),
                        CoolDropdownItem(label: 'En', value: 'en'),
                        CoolDropdownItem(label: 'Ru', value: 'ru'),
                      ],
                      controller: DropdownController(),
                      defaultItem: CoolDropdownItem(label: 'Az', value: 'az'),
                      onChange: (selectedItem) {
                        print(selectedItem);
                      },
                    ),
                  ),
                  SizedBox(width: Get.width / 9,),
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
                ],
              ),
            ),
            SizedBox(height: 80,),
            Text("Xoş gəldiniz!",style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 15,),
            Text("Təlim, tədris və karyera hədəfləriniz \nburada reallaşır.",style: GoogleFonts.poppins(
              fontSize: 15.5,
              fontWeight: FontWeight.w500,
              letterSpacing: 0
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 130,),
            Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 248, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                )
              ),
              child: Column(
                children: [
                  SizedBox(height: 25,),
                  Text("Fin kod ilə daxil ol", style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),),
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
                        Text("Məni yadda saxla",style: GoogleFonts.poppins(
                          color: Color.fromRGBO(151, 154, 160, 1),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 17,),
                  ElevatedButton(
                    onPressed: (){
                      
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
                    SizedBox(height: 25,),
                    ElevatedButton(
                    onPressed: (){
                      
                    }, 
                    child: Text("Qeydiyyatdan keç",style: GoogleFonts.poppins(
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
                    SizedBox(
                      height: Get.height * 0.06, 
                ),

                    GestureDetector(
                      onTap: (){},
                      child: Text("Qonaq olaraq davam et",style: GoogleFonts.poppins(
                        color: Color.fromRGBO(102, 102, 102, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),)),
                      SizedBox(height: 5,)
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
