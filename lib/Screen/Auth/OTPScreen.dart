import 'package:cool_dropdown/controllers/dropdown_controller.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/enums/result_render.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:cool_dropdown/options/dropdown_options.dart';
import 'package:cool_dropdown/options/result_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:venta/Screen/InterestedScreen.dart';

class OTPScreen extends StatefulWidget {
  final booll;
  const OTPScreen({super.key, required this.booll});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController code = TextEditingController();
  final List keyboard = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    'back', '0', 'clear',
  ];

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
                Text("Doğrulama kodunu daxil edin", style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(height: 25,),
                Text("+994 55 555 55 55 nömrəsinə kod göndərildi",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,),

                SizedBox(height: 30,),
              ],
            ),
                PinCodeTextField(
                  onCompleted: (value) {
                    if(widget.booll){
                      Get.off(Interestedscreen(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
                    }else{

                    }
                  },
                  
                  controller: code,
                  keyboardType: TextInputType.number,
                  appContext: context, 
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  readOnly: true,
                  pinTheme: PinTheme(
                    borderRadius: BorderRadius.circular(5),
                      shape: PinCodeFieldShape.box,  
                      disabledColor: Color.fromRGBO(176, 176, 176, 1),
                      inactiveColor: Color.fromRGBO(176, 176, 176, 1),
                      activeColor: Color.fromRGBO(176, 176, 176, 1),
                      selectedColor: Color.fromRGBO(231, 52, 110, 1),
                      errorBorderColor: Colors.red,
                      fieldHeight: 50,
                      fieldWidth: 50,
                      inactiveBorderWidth: 1,
                      activeBorderWidth: 1,
                      disabledBorderWidth: 1,
                      borderWidth: 0,
                  ),
                  textStyle: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color.fromRGBO(231, 52, 110, 1),
                  ),
                  
                  ),
                  SizedBox(height: 30,),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Kod almamısız?",style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),),
                          TextButton(onPressed: (){}, child: Text("Yenidən göndər",style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color.fromRGBO(75, 56, 252, 1),
                            fontWeight: FontWeight.w500,
                            textStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Color.fromRGBO(75, 56, 252, 1),
                            )
                          ),))
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
                  Expanded(
                    child: Container(
                      width: Get.width - 40,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, 
                                  childAspectRatio: MediaQuery.of(context).size.width / MediaQuery.of(context).size.height * 4, 
                                  crossAxisSpacing: 0, 
                                  mainAxisSpacing: 0,
                                  
                                ),
                                itemCount: keyboard.length,
                                itemBuilder: (context, index) {
                                  return TextButton(
                                    onPressed: () {
                                      
                                      setState(() {
                                        if(keyboard[index] == 'clear'){
                                          code.clear();
                      
                                        }else if (keyboard[index] == 'back') {
                                          if (code.text.isNotEmpty) {
                                            code.text = code.text.substring(0, code.text.length - 1);
                                          }
                                        }
                                        else if (code.text.length < 4){
                                          code.text += keyboard[index];
                                          print(code.text);
                                        }
                                        
                                      });
                                    },
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        keyboard[index] == 'clear'?Image.asset("lib/Asset/close.png"):keyboard[index] != 'back'?Text(keyboard[index], style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: Color.fromRGBO(231, 52, 110, 1),
                                          fontWeight: FontWeight.w600
                                        ),):Image.asset("lib/Asset/delete.png")
                                      ],
                                    ),
                                  );
                                },
                              ),
                    ),
                  ),
                            Container()
                          
                          ],
        ),
      ),
    );
  }
}