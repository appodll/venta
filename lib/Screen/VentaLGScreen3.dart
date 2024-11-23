import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';

class Ventalgscreen3 extends StatelessWidget {
  const Ventalgscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    DropdownController controller = DropdownController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      height: 45,
                      child: CoolDropdown(
                        dropdownItemOptions: DropdownItemOptions(
                        alignment: Alignment.center,
                        boxDecoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color.fromRGBO(231, 52, 110, 1), width: 1.5),
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
                              color: Color.fromRGBO(176, 176, 176, 1)
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          boxDecoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromRGBO(176, 176, 176, 1)
                            ),
                            borderRadius: BorderRadius.circular(5)
                            
                          ),
                          textStyle:  TextStyle(
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
                          
                          borderSide: BorderSide(
                            color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        dropdownList: [
                          CoolDropdownItem(label: 'Az', value: 'az'),
                          CoolDropdownItem(label: 'En', value: 'en'),
                          CoolDropdownItem(label: 'Ru', value: 'ru'),
                        ],
                        controller: controller,
                        defaultItem: CoolDropdownItem(label: 'Az', value: 'az'),
                        onChange: (selectedItem) {
                          print(selectedItem);  
                        },
                      ),
                    ),
                    ElevatedButton(
                    onPressed: (){
                      Get.offAll(SignInScreen(),transition: Transition.fade,
                duration: Duration(milliseconds: 500));
                    }, 
                    child: Text("Keç",style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.white,
                        
                      ),),
                    style: ButtonStyle(
                      
                      minimumSize: WidgetStatePropertyAll(Size(80, 45)),
                      backgroundColor: WidgetStatePropertyAll(Color.fromRGBO(231, 52, 110, 1)),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                    ),
                    
                    )
                  ],
                ),
                SizedBox(height: 5,),
          Center(
                child: Container(
                  height: 55,
                  width: Get.width - 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Asset/venta logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
                ],
              ),
            ),
          
              Center(
                child: Container(
                  height: 360,
                  width: Get.width - 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/Asset/İllustrasiya 3.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                width: Get.width - 30,
                child: Text(
                  "Sosial media bölməmizlə yeniliklərdən \nxəbərdar olun vətəcrübənizlə digər \nistifadəçilərə ilham verin.",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color:  Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: (){
                Get.back();
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 15,),
                  Icon(Icons.chevron_left_sharp,
                  size: 35,
                  color: Color.fromRGBO(231, 52, 110, 1),),
                  Text("Əvvəlki", style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  
                ],
              )),
                  GestureDetector(onTap: (){
                Get.offAll(SignInScreen(),transition: Transition.fade,
                duration: Duration(milliseconds: 500));
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Növbəti", style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),),
                  Icon(Icons.chevron_right_sharp,
                  size: 35,
                  color: Color.fromRGBO(231, 52, 110, 1),),
                   SizedBox(width: 15,),
                ],
              )),
                ],
              ),
              SizedBox(),
              
          ],
        ),
      ),
    );
  }
}