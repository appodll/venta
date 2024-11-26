import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:cool_dropdown/options/dropdown_options.dart';
import 'package:flutter/material.dart';

class LanguageSelected extends StatelessWidget {
   LanguageSelected({super.key});
  final controller = DropdownController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 45,
      child: CoolDropdown(
        dropdownItemOptions: DropdownItemOptions(
          alignment: Alignment.center,
          boxDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border:
                Border.all(color: Color.fromRGBO(231, 52, 110, 1), width: 1.5),
          ),
          textStyle: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(231, 52, 110, 1),
            fontWeight: FontWeight.bold,
          ),
          selectedTextStyle: TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(231, 52, 110, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        resultOptions: ResultOptions(
          render: ResultRender.all,
          openBoxDecoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(176, 176, 176, 1)),
              borderRadius: BorderRadius.circular(10)),
          boxDecoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(176, 176, 176, 1)),
              borderRadius: BorderRadius.circular(5)),
          textStyle: TextStyle(
            color: Color.fromRGBO(231, 52, 110, 1),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          icon: Icon(
            Icons.arrow_drop_down,
            color: Color.fromRGBO(231, 52, 110, 1),
          ),
        ),
        dropdownOptions: DropdownOptions(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15)),
        dropdownList: [
          CoolDropdownItem(label: 'Az', value: 'az'),
          CoolDropdownItem(label: 'En', value: 'en'),
          CoolDropdownItem(label: 'Ru', value: 'ru'),
        ],
        controller: controller,
        defaultItem: CoolDropdownItem(label: 'Az', value: 'az'),
        onChange: (selectedItem) {
          print(selectedItem);
          controller.close();
        },
      ),
    );
  }
}
