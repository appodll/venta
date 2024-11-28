import 'package:flutter/material.dart';

class Dashboardheader extends StatelessWidget {
  const Dashboardheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "lib/Asset/venta.png",
            scale: 1.8,
          ),
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              "lib/Asset/bell.png",
              scale: 1.8,
            ),
          )
        ],
      ),
    );
  }
}
