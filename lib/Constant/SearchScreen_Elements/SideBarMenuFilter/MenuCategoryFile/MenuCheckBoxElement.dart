import 'package:flutter/material.dart';
import 'package:venta/Constant/CheckBoxElement.dart';
import 'package:venta/Constant/StaticText.dart';

class Menucheckboxelement extends StatefulWidget {
  final title;
  Menucheckboxelement({super.key, required this.title});

  @override
  State<Menucheckboxelement> createState() => _MenucheckboxelementState();
}

class _MenucheckboxelementState extends State<Menucheckboxelement> {
  bool check_bool = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Row(
            children: [
              Checkboxelement(
                size: 30,
                thickness: 1,
                radius: 20,
                value: check_bool, 
                onChange: (value){
                  setState(() {
                    check_bool = value;
                  });
              }),
              SizedBox(width: 5,),
          
              Statictext(text: widget.title, size: 18)
            ],
          ),
        )
      ],
    );
  }
}