import 'package:shared_preferences/shared_preferences.dart';

class SettingRepository {
  static const themeKey = "darkMode";

  Future<void> saveSettings(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(themeKey, value);
  }

  Future<bool> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeKey) ?? false;
  }
}
