import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Theme/ThemeService.dart';

class EventProjectCard extends StatelessWidget {
  final image;
  final title;
  final description;
  final views;
  final reviews;
  final type;
  final proje_type;
  final proje_owner_logo;
  final participants;
  final success_proje_title;

  const EventProjectCard({super.key, 
  required this.image, 
  required this.title, 
  required this.description, 
  this.views, 
  this.reviews, 
  this.type,
  this.proje_type,
  this.proje_owner_logo,
  this.participants,
  this.success_proje_title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 10,),
            Container(
          height: 200,
          width: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.16),
                blurRadius: 6,
                offset: Offset(5, 5),
              ),
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                  height: 120,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover)),
                ),
                type == 'success_proje'?Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("lib/Asset/player.png"))
                  ),
                ):Container(),
                type == 'proje' || type == 'tour' || type == "success_proje"? Positioned(
                  bottom: 0,
                  child: Container(
                    height: 25,
                    width: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                        primarycolor,
                        const Color.fromRGBO(255, 193, 227, 0.900),
                        const Color.fromRGBO(255, 193, 227, 0.873),
                      ])
                    ),
                    child: type != 'success_proje'?Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10,),
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("lib/Asset/teqvim.png"))
                              ),
                            ),
                            SizedBox(width: 7,),
                            Statictext(text: "19.11.2024", size: 10,color: Colors.white,)
                          ],
                        ),
                        Row(
                          children: [
                            proje_type == 'music'?Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("lib/Asset/musicicon.png"))
                              ),
                            ):proje_type == 'film'?Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("lib/Asset/filmicon.png"))
                              ),
                            ):proje_type == 'tour'?Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("lib/Asset/tur_icon.png"))
                              ),
                            ):Container(),
                            SizedBox(width: 7,),
                            Statictext(text: participants, size: 10,color: Colors.white,),
                            SizedBox(width: 10,),
                          ],
                        )
                      ],
                    ):Center(child: Statictext(text: success_proje_title, size: 12.5, color: Colors.white,),),
                  )):Container()
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Statictext(
                      text: title,
                      size: 14,
                      fontWeight: FontWeight.w600,
                      font_type: "lato",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  type != 'success_proje'?Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/Asset/star.png",
                          scale: 1.8,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Statictext(
                          text: "${reviews} (${views})",
                          size: 10,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ):Container(),
                  type == 'proje' || type == 'tour' || type == 'success_proje'?Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(proje_owner_logo))
                              ),
                            ):Container(),
                  SizedBox(
                    width: 4,
                  ),
                ],
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Statictext(
                        maxlines: 3,
                        text: description,
                        size: 11,
                        overflow: TextOverflow.ellipsis),
                  ))
            ],
          ),
                ),
                SizedBox(width: 10,)
                ],
        ),],
    );
  }
}
