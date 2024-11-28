import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:venta/Theme/ThemeService.dart';

class Checkboxelement extends StatelessWidget {
  final value;
  final void Function(bool) onChange;

  Checkboxelement({required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return CustomCheckBox(
      value: value,
      shouldShowBorder: true,
      borderColor: primarycolor,
      checkedFillColor: primarycolor,
      borderRadius: 7,
      borderWidth: 2.5,
      checkBoxSize: 20,
      onChanged: onChange,
    );
  }
}
