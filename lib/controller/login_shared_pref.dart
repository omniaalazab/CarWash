import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static Future<bool?> setString({
    required String key,
    required String value,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool isObtainUserName = await pref.setString(key, value);
    return isObtainUserName;
  }

  static Future<String?> getString({
    required String key,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    String? value = pref.getString(key);
    return value;
  }

  static Future<bool> setBool({
    required bool value,
    required String key,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return await pref.setBool(key, value);
  }

  static Future<bool?> getBool({
    required String key,
  }) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? value = pref.getBool(key);
    return value;
  }
}
