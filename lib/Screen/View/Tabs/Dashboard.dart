import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/AllEventsElement.dart';
import 'package:venta/Constant/AllNewsElement.dart';
import 'package:venta/Constant/DashboardHeader.dart';
import 'package:venta/Constant/NewsElement.dart';
import 'package:venta/Constant/StaticText.dart';
import 'package:venta/Constant/eventsProjectElement.dart';
import 'package:venta/Theme/ThemeService.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              Dashboardheader(),
          
              SizedBox(
                height: 15,
              ),
          
              Allnewselement(),
          
              SizedBox(height: 13,),
          
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Statictext(text: "Tədbirlər", size: 18, fontWeight: FontWeight.w600,color: primarycolor,),
                    Row(
                      children: [
                        
                        Statictext(text: "Hamısı", size: 18),
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
              ),
              SizedBox(height: 7,),
          
              Alleventselement(),
              
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   
                    Statictext(text: "Lahiyələr", size: 18, fontWeight: FontWeight.w600,color: primarycolor,),
                    Row(
                      children: [
                        
                        Statictext(text: "Hamısı", size: 18),
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
      ),
    );
  }
}
