import 'package:flutter/material.dart';
import 'package:venta/Constant/DashBoard_Elements/Category_Header/CategoryHeader.dart';
import 'package:venta/Constant/DashBoard_Elements/EventsFile/AllEventsElement.dart';
import 'package:venta/Constant/DashBoard_Elements/ProjeFile/AllProjeElement.dart';
import 'package:venta/Constant/SearchScreen_Elements/PopularSearchesFile/PopularSearches.dart';
import 'package:venta/Constant/SearchScreen_Elements/RecentSearchesFile/RecentSearches.dart';
import 'package:venta/Constant/SearchScreen_Elements/SearchScreenHeaderFile/SearchScreenHeader.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
          
              Searchscreenheader(),
              
              SizedBox(height: 5,),
          
              Categoryheader(
                category_title: "Son axtarışlar", 
                category_title_color: Colors.black,
                type: 'search_category',
                ),
          
                Recentsearches(),
          
                 Categoryheader(
                category_title: "Populyar axtarışlar", 
                category_title_color: Colors.black,
                type: 'search_category',
                ),
          
              Popularsearches(),
          
              SizedBox(height: 13,),
          
                Categoryheader(category_title: "Tədbirlər", button_title: "Hamısı", onPress: (){}),
            
                SizedBox(height: 7,),
            
                Alleventselement(),
                
                Categoryheader(category_title: "Lahiyələr", button_title: "Hamısı", onPress: (){}),
          
                SizedBox(height: 7,),
          
                Allprojeelement(),
            ],
          ),
        ),
      ),
    );
  }
}