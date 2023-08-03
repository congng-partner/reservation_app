import 'package:reservation_app/utils/storage_key_management.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {
  static writeOnBoardingData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StorageKeyManagement.isShownOnBoarding, true);
  }

  static Future<bool?> readOnBoardingData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(StorageKeyManagement.isShownOnBoarding);
  }

  static writeAccessToken(String accessToken) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(StorageKeyManagement.accessTokenKey, accessToken);
  }

  static Future<String?> readAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(StorageKeyManagement.accessTokenKey);
  }

  static void deleteAccessToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(StorageKeyManagement.accessTokenKey);
  }
}
