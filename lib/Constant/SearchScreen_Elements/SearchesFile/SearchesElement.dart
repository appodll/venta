import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';

class Searcheselement extends StatelessWidget {
  final title;
  final date;
  final void Function()? onPress_deleted;
  final void Function()? onPress;
  final type;
  Searcheselement({super.key, required this.title, this.date, this.onPress, this.type, this.onPress_deleted});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPress,
          child: Row(
            children: [
              type == 'popular_search'?Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/Asset/populyaraxtaris.png"))
                ),
              ):Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/Asset/sonaxtarisicon.png"))
                ),
              ),
              SizedBox(width: 5,),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Statictext(text: title, size: 13,font_type: 'notoSans',fontWeight: FontWeight.w500,),
                        type == "popular_search"?Container():Row(
                          children: [
                            Statictext(text: date, size: 12,font_type: 'notoSans',color: Colors.grey,fontWeight: FontWeight.w600),
                            SizedBox(width: 5,),
                            InkWell(
                              borderRadius: BorderRadius.circular(5),
                              onTap: onPress_deleted,
                              child: Container(
                                height: 23,
                                width: 23,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage("lib/Asset/x.png"))
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Divider(color: Colors.black,thickness: 0.4,)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}