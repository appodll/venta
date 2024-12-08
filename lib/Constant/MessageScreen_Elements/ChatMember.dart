import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';

class Chatmember extends StatelessWidget {
  final void Function() onTap;
  Chatmember({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Statictext(text: "Lorem Ipsum is simply Summy text ", size: 14,overflow: TextOverflow.ellipsis,color: Color.fromRGBO(89, 101, 116, 1),)),
                          SizedBox(width: 15,),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Statictext(text: "13:06", size: 14,fontWeight: FontWeight.w600,))
                        ],
                      )
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
      ),
    );
  }
}