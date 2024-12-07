import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:venta/Screen/Auth/SignINScreen.dart';
import 'package:venta/Screen/View/HomeScreen.dart';
import 'package:venta/SplashView.dart';

class Stroge{

  Future<void>save_Data(key,value,type)async{
    final prefs = await SharedPreferences.getInstance();
    if (type == "bool"){
      prefs.setBool(key, value);
    }
    else if (type == "int"){
      prefs.setInt(key, value);
    }
    else if (type == "string"){
      prefs.setString(key, value);
    }
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
          Get.off(Splashview(),duration: Duration(milliseconds: 500), transition: Transition.rightToLeft);
        }
      }
      
  }

  
}