import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pininputelement extends StatelessWidget{
  final controller;
  final void Function(String?) onCompleted;

  
  Pininputelement({required this.controller, required this.onCompleted});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
                  onCompleted: onCompleted,
                  
                  controller: controller,
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
                  
                  );
  }
}