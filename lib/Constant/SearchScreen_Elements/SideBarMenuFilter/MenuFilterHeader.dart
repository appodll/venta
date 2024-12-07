import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';

class Menufilterheader extends StatelessWidget {
  const Menufilterheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: (){
                                  Scaffold.of(context).closeEndDrawer();
                                },
                                child: Container(
                                  height: 23,
                                  width: 23,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage("lib/Asset/x.png"))
                                  ),
                                ),
                              ),
                              Statictext(text: "Filtr tətbiq et", size: 18,fontWeight: FontWeight.w600,),
                              
                              InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: (){}, 
                                child: Statictext(text: "Sil", size: 17,color: Colors.red,fontWeight: FontWeight.w600))
                  ],
                ),
              );
  }
}