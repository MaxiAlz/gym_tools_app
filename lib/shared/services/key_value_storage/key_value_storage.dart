import 'package:shared_preferences/shared_preferences.dart';

class KeyValueStorage {
  
  Future<SharedPreferences> getSharePreferences() async {
    return await SharedPreferences.getInstance();
  }

  Future<bool> removeKey(String key) async {
    final prefs = await getSharePreferences();
    return await prefs.remove(key);
  }

  Future<void> setKeyValue<T>(String key, T value) async {
    final prefs = await getSharePreferences();

    switch (T) {
      case int:
        prefs.setInt(key, value as int);
        break;

      case String:
        prefs.setString(key, value as String);
        break;

      default:
        throw UnimplementedError(
            'Set not implemented for type ${T.runtimeType}');
    }
  }

  Future<T?> getValue<T>(String key) async {
    final prefs = await getSharePreferences();

    switch (T) {
      case int:
        return prefs.getInt(key) as T?;

      case String:
        return prefs.getString(key) as T?;

      default:
        throw UnimplementedError(
            'GET not implemented for type ${T.runtimeType}');
    }
  }
}
