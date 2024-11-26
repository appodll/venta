import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:venta/Controller/Stroge.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';
import 'package:venta/Screen/VentaLGScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final _stroge = Get.put(Stroge());

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), 
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    _controller.forward(); 
    Future.delayed(Duration(seconds: 3),(){
      _stroge.get_Stroge_screen();
      
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: FadeTransition(
          opacity: _animation, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 10),
              Center(
                child: Container(
                  height: 70,
                  width: size.width - 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Asset/venta logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 230,
                  width: Get.width - 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Asset/Group 20435.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(
                "İnkişaf yolunda sizə dəstək olmağa hazırıq!",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  Color.fromRGBO(168, 0, 54, 1),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Bu platforma təlim, tədris, təcrübə proqramları, sertifikatlaşdırma, səyahət və iş imkanları \nsahəsində sizə dəstək göstərir.",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  color:  Color.fromRGBO(168, 0, 54, 1),
                ),
                textAlign: TextAlign.center,
              ),
               SizedBox(),
              Center(
                child: Container(
                  height: 35,
                  width: size.width - 30,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Asset/globalmart logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
               SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
