import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Screen/View/Tabs/Dashboard.dart';
import 'package:venta/Screen/View/Tabs/SearchScreen.dart';

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
              InkWell(
                borderRadius: BorderRadius.circular(5),
                
                onTap: (){
                  setState(() {
                    page_index = 0;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage("lib/Asset/BottomNavigation/home.png"),height: 28,
                    color: page_index != 0?Colors.grey:Color.fromRGBO(231, 52, 110, 1),),
                    SizedBox(height: 3,),
                    Text("Ana Səhifə", style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      color: page_index != 0?Color.fromRGBO(103, 109, 117, 1):Color.fromRGBO(231, 52, 110, 1)
                    ),)
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: (){
                  setState(() {
                    page_index = 1;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage("lib/Asset/BottomNavigation/search.png"),height: 28,
                    color: page_index != 1?Colors.grey:Color.fromRGBO(231, 52, 110, 1),),
                    SizedBox(height: 3,),
                    Text("Axtarış", style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      color: page_index != 1?Colors.grey:Color.fromRGBO(231, 52, 110, 1)
                    ),)
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: (){
                  setState(() {
                    page_index = 2;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage("lib/Asset/BottomNavigation/message.png"),height: 28,
                    color: page_index != 2?Colors.grey:Color.fromRGBO(231, 52, 110, 1),),
                    SizedBox(height: 3,),
                    Text("İsmarıc", style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      color: page_index != 2?Colors.grey:Color.fromRGBO(231, 52, 110, 1)
                    ),)
                  ],
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: (){
                  setState(() {
                    page_index = 3;
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(image: AssetImage("lib/Asset/BottomNavigation/social.png"),height: 28,
                    color: page_index != 3?Colors.grey:Color.fromRGBO(231, 52, 110, 1),),
                    SizedBox(height: 3,),
                    Text("Sosial media", style: GoogleFonts.poppins(
                      fontSize: 13.5,
                      color: page_index != 3?Colors.grey:Color.fromRGBO(231, 52, 110, 1)
                    ),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: (){
                    setState(() {
                      page_index = 4;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image(image: AssetImage("lib/Asset/BottomNavigation/account.png"),height: 28,
                      color: page_index != 4?Colors.grey:Color.fromRGBO(231, 52, 110, 1),),
                      SizedBox(height: 3,),
                      Text("Profil", style: GoogleFonts.poppins(
                        fontSize: 13.5,
                        color: page_index != 4?Colors.grey:Color.fromRGBO(231, 52, 110, 1)
                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}