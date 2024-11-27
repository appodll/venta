import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "lib/Asset/venta.png",
                    scale: 1.8,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "lib/Asset/bell.png",
                      scale: 1.8,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 228,
              width: Get.width - 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/Asset/ilham.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(17),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 12,
                    offset: Offset(5, 5),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.transparent,
                                Colors.black.withOpacity(0.8),
                              ],
                              transform: GradientRotation(20),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 10), 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "Prezident İlham Əliyev Təhsil Sektorunda Yeni İslahatları Təsdiqlədi.",
                                  style: GoogleFonts.poppins(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                  maxLines: null, 
                                  overflow: TextOverflow.visible,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 18,
                                        child: Image.asset(
                                            "lib/Asset/izlenme.png")),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "24",
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13,),
            Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Tədbirlər", style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Color.fromRGBO(231, 52, 110, 1),
                    fontWeight: FontWeight.w600
                  ),),
                  Row(
                    children: [
                      Text("Hamısı", style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),),
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          
                        },
                        child: Image.asset("lib/Asset/right.png",scale: 1.7,),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
