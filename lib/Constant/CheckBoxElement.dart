import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

class Checkboxelement extends StatelessWidget {
  final value;
  final void Function(bool) onChange;

  Checkboxelement({required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return CustomCheckBox(
      value: value,
      shouldShowBorder: true,
      borderColor: Color.fromRGBO(231, 52, 110, 1),
      checkedFillColor: Color.fromRGBO(231, 52, 110, 1),
      borderRadius: 7,
      borderWidth: 2.5,
      checkBoxSize: 20,
      onChanged: onChange,
    );
  }
}
