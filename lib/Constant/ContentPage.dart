import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Constant/StaticText.dart';

class Contentpage extends StatelessWidget {
  final PageController _pageController = PageController();
  Contentpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("lib/Asset/back.png"))),
                    ),
                  ),
                  Row(
                    children: [
                      Statictext(
                    text: "Xəbərlər",
                    size: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(width: 35,)
                    ],
                  ),
                  Container()
                ],
              ),
            ),

            SizedBox(height: 15,),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                height: 275,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: Offset(5, 7),
                  ),
                  ]
                ),
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 275,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("lib/Asset/şuşa.png"),fit: BoxFit.cover),
                      ),
                      
                    );
                  },),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        if (_pageController.hasClients){
                          _pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                        }
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/Asset/sol.png"))
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        if(_pageController.hasClients){
                          _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                        }
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/Asset/sag.png"))
                        ),
                      ),
                    ),
                  ],
                ),
              )

              ],
            ),

            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("lib/Asset/venta.png"))
                ),
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Statictext(text: "Venta", size: 13,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(102, 102, 102, 1),),

                  SizedBox(height: 5,),

                  Row(
                    children: [
                      Container(
                        height: 11,
                        width: 11,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/Asset/map.png"))
                        ),
                      ),
                      SizedBox(width: 5,),
                      Statictext(text: "Bakı", size: 12)
                    ],
                  )
                ],
              )
                ],
              ),
            ),

            SizedBox(height: 15,),

            Statictext(text: "Sirket haqqinda", size: 14)
          ],
        ),
      ),
    );
  }
}
