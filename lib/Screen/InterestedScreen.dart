import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Interestedscreen extends StatefulWidget {
  const Interestedscreen({super.key});

  @override
  State<Interestedscreen> createState() => _InterestedscreenState();
}

class _InterestedscreenState extends State<Interestedscreen> {
  final _selectedButtons = ["Təlim proqramları","Online dərslər","Vakansiyalar"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    child: CoolDropdown(
                      dropdownItemOptions: DropdownItemOptions(
                        alignment: Alignment.center,
                        boxDecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Color.fromRGBO(231, 52, 110, 1),
                              width: 1.5),
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
                            border: Border.all(
                                color: Color.fromRGBO(176, 176, 176, 1)),
                            borderRadius: BorderRadius.circular(10)),
                        boxDecoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(176, 176, 176, 1)),
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
                      controller: DropdownController(),
                      defaultItem: CoolDropdownItem(label: 'Az', value: 'az'),
                      onChange: (selectedItem) {
                        print(selectedItem);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/Asset/venta logo.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 80,)
                    ],
                  ),
                  Container()
                  
                ],
              ),
                        SizedBox(height: 5,),
                
                      ],
                    ),
                  ),
                       SizedBox(height: 30,),
            Center(
                  child: Container(
                    height: 255,
                    width: Get.width - 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("lib/Asset/İllustrasiya interested.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 35,),
                Text("Xoş gəldin! \nSəni aramızda görməkdən məmnunuq.",
                style: GoogleFonts.notoSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
                
                textAlign: TextAlign.center,),
                SizedBox(height: 35,),
                 Wrap(
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
                  return OutlinedButton(
                    
                  onPressed: () {
                    setState(() {
                      if(_selectedButtons.contains(title)){
                        _selectedButtons.remove(title);
                      }else{
                        _selectedButtons.add(title);
                      }
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    side: !_selectedButtons.contains(title)?BorderSide(color: Colors.grey, width: 1):BorderSide(color: Color.fromRGBO(231, 52, 110, 1), width: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: !_selectedButtons.contains(title)?Colors.white:Color.fromRGBO(231, 52, 110, 1),
                  ),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: !_selectedButtons.contains(title)?Color.fromRGBO(231, 52, 110, 1):Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
                }).toList(),
              ),
                GestureDetector(onTap: (){
                
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Növbəti", style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  Icon(Icons.chevron_right_sharp,
                  size: 35,
                  color: Color.fromRGBO(231, 52, 110, 1),)
                ],
              )),  
              SizedBox(height: 15,)
                  ],
          ),
        ),
      ),
    );
  }
}