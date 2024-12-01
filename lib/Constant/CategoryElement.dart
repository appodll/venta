import 'package:flutter/material.dart';
import 'package:venta/Constant/StaticText.dart';

class Categoryelement extends StatelessWidget {
  final title;
  final void Function() onTap;
  const Categoryelement({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.7), strokeAlign: 0.1),
            borderRadius: BorderRadius.circular(8)),
        child: Statictext(
          text: title,
          size: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
