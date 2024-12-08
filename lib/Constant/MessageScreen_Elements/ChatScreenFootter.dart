import 'package:flutter/material.dart';
import 'package:venta/Constant/ButtonElement.dart';
import 'package:venta/Constant/InputElement.dart';

class Chatscreenfootter extends StatelessWidget {
  const Chatscreenfootter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(width: 15,),
              Expanded(
                child: Inputelement(
                            label: "İsmarıc yaz...", 
                            suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/Asset/docIcon.png"))
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: GestureDetector(
                      onTap: (){
                        
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/Asset/camera.png"))
                        ),
                      ),
                    ),
                  ),
                ],
                            ), 
                            controller: TextEditingController(),
                            border_color: Colors.transparent,
                            filled: true,
                            filled_color: Color.fromRGBO(249, 249, 249, 1),
                            label_font_size: 17.0,
                          
                            ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Buttonelement(
                  onPressed: (){}, 
                  title: "",
                  width: 55.0,
                  height: 60.0,
                  shape: "circle",
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("lib/Asset/mikrofonicon.png"))
                    ),
                  ),
                  )
              )
            ],
          ),
            
          SizedBox(height: 15,)
        ],
      );
  }
}