import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Controller/Auth.dart';

class Keyboardelement extends StatefulWidget{
  final code;
  const Keyboardelement({super.key, required this.code});



  @override
  State<Keyboardelement> createState() => _KeyboardelementState();
}

class _KeyboardelementState extends State<Keyboardelement> {
  final List keyboard = [
    '1', '2', '3',
    '4', '5', '6',
    '7', '8', '9',
    'back', '0', 'clear',
  ];


  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                                    onPressed: (){
                                      

                                      setState(() {
                                        if(keyboard[index] == 'clear'){
                                          widget.code.clear();
                      
                                        }else if (keyboard[index] == 'back') {
                                          if (widget.code.text.isNotEmpty) {
                                            widget.code.text = widget.code.text.substring(0, widget.code.text.length - 1);
                                          }
                                        }
                                        else if (widget.code.text.length < 4){
                                          widget.code.text += keyboard[index];
                                          
                                          print(widget.code.text);
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
                  );
  }
}