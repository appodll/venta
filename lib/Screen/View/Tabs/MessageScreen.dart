import 'package:flutter/material.dart';
import 'package:venta/Constant/MessageScreen_Elements/ChatMember.dart';
import 'package:venta/Constant/StaticText.dart';

class Messagescreen extends StatelessWidget {
  const Messagescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Statictext(text: "İsmarıc", size: 20),
              ),
            ),

            Chatmember()
          ],
        ),
      ),
    );
  }
}