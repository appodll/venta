import 'package:flutter/material.dart';
import 'package:venta/Constant/ButtonElement.dart';

import '../Theme/ThemeService.dart';

class Tagbuttonelement extends StatefulWidget {
  Tagbuttonelement({super.key});

  @override
  State<Tagbuttonelement> createState() => _TagbuttonelementState();
}

class _TagbuttonelementState extends State<Tagbuttonelement> {
  final _selectedButtons = [
    "Təlim proqramları",
    "Online dərslər",
    "Vakansiyalar"
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 3,
      runSpacing: 3,
      children: [
        "Təlim proqramları",
        "Xəbərlər",
        "Karyera məsləhətləri",
        "İmtahanlar",
        "Təcrübə proqramları",
        "Online dərslər",
        "Sertifikat imkanları",
        "Vakansiyalar",
        "Uğur hekayələri",
        "Mentorluq proqramları",
        "Səyahət imkanları",
        "İnteraktiv oyunlar",
      ].map((title) {
        return Buttonelement(
          onPressed: () {
            setState(() {
              if (_selectedButtons.contains(title)) {
                _selectedButtons.remove(title);
              } else {
                _selectedButtons.add(title);
              }
            });
          },
          title: title,
          type: 'outlined',
          side: !_selectedButtons.contains(title)
              ? BorderSide(color: Colors.grey, width: 1)
              : BorderSide(color: primarycolor, width: 0),
          backgroundColor: !_selectedButtons.contains(title)
              ? Colors.white
              : primarycolor,
          text_color: !_selectedButtons.contains(title)
              ? primarycolor
              : Colors.white,
        );
      }).toList(),
    );
  }
}
