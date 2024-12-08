import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';

class Chatmember extends StatelessWidget {
  const Chatmember({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Column(
        children: [
          Divider(
          color: Colors.grey.withOpacity(0.2),
        ),
          Padding(
          padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("lib/Asset/venta_chatLogo.png"))
                  ),
                ),
                SizedBox(width: 15,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Statictext(text: "Venta", size: 17, fontWeight: FontWeight.w700,),
                    SizedBox(height: 7,),
                    Statictext(text: "Lorem Ipsum is simply dummy text ", size: 14,overflow: TextOverflow.ellipsis,)
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.grey.withOpacity(0.2),
        )
        ],
      ),
    );
  }
}