import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:venta/Theme/ThemeService.dart';

class Checkboxelement extends StatelessWidget {
  final value;
  final void Function(bool) onChange;
  final double radius;
  final double thickness;
  final double size;

  Checkboxelement({
    required this.value, 
    required this.onChange, 
    this.radius = 7, 
    this.thickness = 2.5,
    this.size = 20
    });

  @override
  Widget build(BuildContext context) {
    return CustomCheckBox(
      value: value,
      shouldShowBorder: true,
      borderColor: primarycolor,
      checkedFillColor: primarycolor,
      borderRadius: radius,
      borderWidth: thickness,
      checkBoxSize: size,
      onChanged: onChange,
    );
  }
}
