import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction{
  // keys
  static String userLoggedInkey = 'LOGGEDINKEY';
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  // saving data to sf
  static Future<bool> saveUserLoggedInStatus(bool isUserLoggedIn)async{
    SharedPreferences sf = await SharedPreferences.getInstance();
      return await sf.setBool(userLoggedInkey, isUserLoggedIn);
  }

  static Future<bool> saveUserNameStatus(String UserName) async{
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userNameKey, UserName);
  }

  static Future<bool> saveUserEmailStatus(String UserEmail) async{
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(userEmailKey, UserEmail);
  }



  // gettting data from sf
  static Future<bool?> getUerLoggedInStatus() async{
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getBool(userLoggedInkey);
  }
}
