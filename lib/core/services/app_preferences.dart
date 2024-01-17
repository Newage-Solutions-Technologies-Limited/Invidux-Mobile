import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static SharedPreferences? _preferences;

  static const _keyLoggedIn = 'loggedin';
  static const _userEmail = 'useremail';

// initialize sharedPreference.
  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setLoginData(bool login) async =>
      await _preferences?.setBool(_keyLoggedIn, login);

  static bool? getLoginData() => _preferences?.getBool(_keyLoggedIn);

  static Future setUserEmail(String email) async =>
      await _preferences?.setString(_userEmail, email);

  static String? getUserEmail() => _preferences?.getString(_userEmail);
}
