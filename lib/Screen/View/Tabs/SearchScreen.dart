import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:venta/Constant/DashBoard_Elements/Category_Header/CategoryHeader.dart';
import 'package:venta/Constant/DashBoard_Elements/EventsFile/AllEventsElement.dart';
import 'package:venta/Constant/DashBoard_Elements/ProjeFile/AllProjeElement.dart';
import 'package:venta/Constant/SearchScreen_Elements/PopularSearchesFile/PopularSearches.dart';
import 'package:venta/Constant/SearchScreen_Elements/RecentSearchesFile/RecentSearches.dart';
import 'package:venta/Constant/SearchScreen_Elements/SearchScreenHeaderFile/SearchScreenHeader.dart';
import 'package:venta/Constant/SearchScreen_Elements/SideBarMenuFilter/MenuFilter.dart';

class Searchscreen extends StatefulWidget {

  Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  bool tagBool = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, 
      statusBarIconBrightness: Brightness.dark, 
    ));
    return Scaffold(
      backgroundColor: Colors.white,

      
      endDrawer: SafeArea(
        child: Menufilter(),
      ),


      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              SizedBox(height: 10,),
          
              Searchscreenheader(onTagBoolChanged: (value) {
                  setState(() {
                    tagBool = value;
                  });
                },),
              
              SizedBox(height: 5,),
          
             
          
               tagBool == false?Column(
                children: [
                   Categoryheader(
                category_title: "Son axtarışlar", 
                category_title_color: Colors.black,
                type: 'search_category',
                ),
          
                Recentsearches(
                  onPress: (){},
                  onPress_deleted: (){},
                ),
                
                    Categoryheader(
                category_title: "Populyar axtarışlar", 
                category_title_color: Colors.black,
                type: 'search_category',
                ),
          
              Popularsearches(
                onPress: (){

                },
              ),
                ],
               ):Container(),
               
          
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