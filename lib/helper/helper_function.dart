import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction{
  // keys
  static String userLoggedInkey = 'LOGGEDINKEY';
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";


  // gettting data from
  static Future<bool?> getUerLoggedInStatus() async{
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInkey);
  }
}
