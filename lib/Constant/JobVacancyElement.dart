import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/StaticText.dart';

class Jobvacancyelement extends StatelessWidget {
  final vacancy_title;
  final price;
  final company;
  final location;
  final created_at;
  final company_logo;

  const Jobvacancyelement({
    required this.vacancy_title, 
    required this.price, 
    required this.company, 
    required this.location, 
    required this.created_at,
    required this.company_logo
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        width: Get.width - 30,
        child: Row(
          children: [
            
            Container(
              height: 23,
              width: 23,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 4,
                      offset: Offset(3, 3),
                    ),
                  
                ],
                image: DecorationImage(image: AssetImage(company_logo))
                
              ),
              
              
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Statictext(text: vacancy_title, size: 14,fontWeight: FontWeight.w600,),
                      Row(
                        children: [
                          Statictext(text: price, size: 13,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(102, 102, 102, 1),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("lib/Asset/manat.png"))
                            ),
                          )
                          
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Statictext(text: company, size: 12,
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontWeight: FontWeight.w500,),
                      SizedBox(width: 13,),
                      Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/Asset/map.png"))
                        ),
                      ),
                      SizedBox(width: 4,),
                      Statictext(text: location, size: 12,
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontWeight: FontWeight.w500,),
                        ],
                      ),
                      Statictext(text: created_at, size: 12,
                      color: Color.fromRGBO(102, 102, 102, 1),
                      fontWeight: FontWeight.w500,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Divider(
        color: Colors.black,
      )
      ],
    );
  }
}