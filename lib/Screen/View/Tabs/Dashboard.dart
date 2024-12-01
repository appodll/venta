import 'package:flutter/material.dart';
import 'package:venta/Constant/AllEventsElement.dart';
import 'package:venta/Constant/AllJobsVacancyElement.dart';
import 'package:venta/Constant/AllNewsElement.dart';
import 'package:venta/Constant/AllProjeElement.dart';
import 'package:venta/Constant/CategoryHeader.dart';
import 'package:venta/Constant/DashboardHeader.dart';

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

              Categoryheader(category_title: "Tədbirlər", button_title: "Hamısı", onPress: (){}),
          
              SizedBox(height: 7,),
          
              Alleventselement(),
              
              Categoryheader(category_title: "Lahiyələr", button_title: "Hamısı", onPress: (){}),
              SizedBox(height: 7,),

              Allprojeelement(),

              SizedBox(height: 7,),

              Categoryheader(category_title: "Vakansiyalar", button_title: "Hamısı", onPress: (){}),

              SizedBox(height: 7,),

              Alljobsvacancyelement(),

              SizedBox(height: 7,),

              Categoryheader(category_title: "Turlar", button_title: "Hamısı", onPress: (){}),

              SizedBox(height: 7,),

              Allprojeelement()

            ],
          ),
        ),
      ),
    );
  }
}
