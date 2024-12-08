import 'package:flutter/material.dart';
import 'package:venta/Constant/ButtonElement.dart';
import 'package:venta/Constant/InputElement.dart';
import 'package:venta/Constant/MessageScreen_Elements/ChatScreenFootter.dart';
import 'package:venta/Constant/MessageScreen_Elements/ChatScreenheader.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Chatscreenfootter(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            Chatscreenheader()

          ],
        ),
      ),
    );
  }
}