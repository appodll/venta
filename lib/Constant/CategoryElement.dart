import 'package:flutter/material.dart';
import 'package:venta/Constant/ButtonElement.dart';

class Categoryelement extends StatelessWidget {
  final title;
  final void Function() onTap;
  const Categoryelement({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Buttonelement(
      onPressed: onTap, 
      title: title,
      type: 'outlined',
      backgroundColor: Colors.white,
      text_color: Colors.black,
      font_weight: FontWeight.w600,
      font_size: 13.5,
      padding: 12,
      );
  }
}
