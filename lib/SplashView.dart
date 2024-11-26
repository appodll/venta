import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';
import 'package:venta/Screen/VentaLGScreen.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  final PageController _pageController = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (p){
          setState(() {
            page = p;
            
          });
        },
        children: [
          Ventalgscreen(
            back_bool: true,
            title: "Bizimlə birlikdə sevdiyin sahədə dərin \nbiliklər qazanaraq \nkaryerana güclü bir addım at..", 
            image: "lib/Asset/İllustrasiya.png", function: (){
              setState(() {
                _pageController.animateToPage(1, duration: Duration(milliseconds: 400), curve: Curves.easeInOutCubic);
              });
            }),
            Ventalgscreen(
            back_function: () {
              setState(() {
                _pageController.animateToPage(0, duration: Duration(milliseconds: 400), curve: Curves.easeInOutCubic);
              });
              },
            title: "CV-nizi mükəmməlləşdirin, \nuğurlu müraciət strategiyaları qurun və \narzuladığınız işi tapmaq üçün bizdən dəstək alın.", 
            image: "lib/Asset/İllustrasiya 2.png", function: (){
              setState(() {
                _pageController.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.easeInOutCubic);
              });
            }),
            Ventalgscreen(
              back_function: (){
                setState(() {
                  _pageController.animateToPage(1, duration: Duration(milliseconds: 400), curve: Curves.easeInOutCubic);
                });
              },
            title: "Sosial media bölməmizlə yeniliklərdən \nxəbərdar olun vətəcrübənizlə digər \nistifadəçilərə ilham verin.", 
            image: "lib/Asset/İllustrasiya 3.png", function: (){
              Get.offAll(SignInScreen(), transition: Transition.fadeIn, duration: Duration(milliseconds: 500));
            })
        ],
      ),
    );
  }
}