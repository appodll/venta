import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venta/Screen/SplashScreen.dart';

void main(){
  runApp(Main());
}


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      
    );
  }
}