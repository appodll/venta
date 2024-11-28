import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';

class EventProjectCard extends StatelessWidget {
  final image;
  final title;
  final description;
  final views;
  final reviews;

  const EventProjectCard({super.key, 
  required this.image, 
  required this.title, 
  required this.description, 
  required this.views, 
  required this.reviews, });

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
                  Padding(
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
                  ),
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
