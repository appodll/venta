import 'package:flutter/material.dart';
import 'package:venta/Constant/DashBoard_Elements/Dashboard_CategoryFile/AllCategoryElement.dart';
import 'package:venta/Constant/DashBoard_Elements/EventsFile/AllEventsElement.dart';
import 'package:venta/Constant/DashBoard_Elements/JobVacancyFile/AllJobsVacancyElement.dart';
import 'package:venta/Constant/DashBoard_Elements/NewsFile/AllNewsElement.dart';
import 'package:venta/Constant/DashBoard_Elements/ProjeFile/AllProjeElement.dart';
import 'package:venta/Constant/DashBoard_Elements/AllSuccessProjeFile/AllSuccessProjeElement.dart';
import 'package:venta/Constant/DashBoard_Elements/ToursFile/AllTourElement.dart';
import 'package:venta/Constant/DashBoard_Elements/Category_Header/CategoryHeader.dart';
import 'package:venta/Constant/DashBoard_Elements/DashBoardHeaderFile/DashboardHeader.dart';

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
              
              SizedBox(height: 10,),

              Allcategoryelement(),
          
              SizedBox(
                height: 10,
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

              Alltourelement(),

              SizedBox(height: 7,),

              Categoryheader(category_title: "Uğurlu təyinlər", button_title: "Hamısı", onPress: (){}),

              SizedBox(height: 7,),

              Allsuccessprojeelement(),
              
              SizedBox(height: 7,),

            ],
          ),
        ),
      ),
    );
  }
}
