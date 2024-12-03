import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Constant/BottomFile/BottomButtonElement.dart';
import 'package:venta/Screen/View/Tabs/Dashboard.dart';
import 'package:venta/Screen/View/Tabs/SearchScreen.dart';
import 'package:venta/Theme/ThemeService.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var page_index = 0;
  List<Widget> _screens = [
    Dashboard(),
    Searchscreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[page_index],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Color.fromRGBO(231, 52, 110, 0.6),
            blurRadius: 8)
          ]
        ),
        child: BottomAppBar(
          color: Colors.white,
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
            children: [
              
              Bottombuttonelement(
                onTap: (){
                  setState(() {
                    page_index = 0;
                  });
                }, 
                color: page_index != 0?Colors.grey:primarycolor,
                icon: "lib/Asset/BottomNavigation/home.png",
                title: "Ana səhifə",),
                
              
              Bottombuttonelement(
                onTap: (){
                  setState(() {
                    page_index = 1;
                  });
                }, 
                color: page_index != 1?Colors.grey:primarycolor,
                icon: "lib/Asset/BottomNavigation/search.png",
                title: "Axtarış",),

                Bottombuttonelement(
                onTap: (){
                  setState(() {
                    page_index = 2;
                  });
                }, 
                color: page_index != 2?Colors.grey:primarycolor,
                icon: "lib/Asset/BottomNavigation/message.png",
                title: "İsmarıc",),

                Bottombuttonelement(
                onTap: (){
                  setState(() {
                    page_index = 3;
                  });
                }, 
                color: page_index != 3?Colors.grey:primarycolor,
                icon: "lib/Asset/BottomNavigation/social.png",
                title: "Sosial media",),

                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Bottombuttonelement(
                  onTap: (){
                    setState(() {
                      page_index = 4;
                    });
                  }, 
                  color: page_index != 4?Colors.grey:primarycolor,
                  icon: "lib/Asset/BottomNavigation/account.png",
                  title: "Profil",)
                ),
            ],
          ),
        ),
      ),
    );
  }
}