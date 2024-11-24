import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';
import 'package:venta/Screen/VentaLGScreen1.dart';
import 'package:venta/Screen/View/HomeScreen.dart';

class Stroge{

  Future<void>lGScreenSave()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("LGScreen", true);
  }

  Future<void>save_Data()async{
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool("user", true);
  }

  Future<void>get_Stroge_screen()async{
    final prefs = await SharedPreferences.getInstance();
      var lgScreenData = prefs.getBool("LGScreen");
      if(prefs.getBool("user") == true){
        Get.off(HomeScreen(),duration: Duration(milliseconds: 500), transition: Transition.rightToLeft);
      }else{
        if (lgScreenData == true){
        Get.off(SignInScreen(),duration: Duration(milliseconds: 500), transition: Transition.rightToLeft);
      }else{
        Get.off(Ventalgscreen1(),duration: Duration(milliseconds: 500), transition: Transition.rightToLeft);
      }
      }
      
  }

  
}