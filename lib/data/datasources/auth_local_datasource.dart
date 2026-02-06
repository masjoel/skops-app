import 'package:webview_skops/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  static const keyLastSync = 'last_sync_time';
  static Future<void> setLastSync(String time) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyLastSync, time);
  }

  static Future<String?> getLastSync() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyLastSync);
  }

  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_data', authResponseModel.toJson());
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<AuthResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    return AuthResponseModel.fromJson(authData ?? '{}');
  }

  // Future<bool> isAuth() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final authData = prefs.getString('auth_data');

  //   return authData != null;
  // }
  Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    if (authData == null) return false;

    final model = AuthResponseModel.fromJson(authData);
    return model.token != null && model.token!.isNotEmpty;
  }

  // Future<bool> isLoggedIn() async {
  //   final data = await getAuthData();
  //   return data.token != null && data.token!.isNotEmpty;
  // }

  // --- profil usaha
  Future<void> saveProfilUsaha(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<String> getProfilUsaha(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? '';
  }

  Future<void> removeProfilUsaha(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> saveMidtransServerKey(String serverKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('server_key', serverKey);
  }

  //get midtrans server key
  Future<String> getMitransServerKey() async {
    final prefs = await SharedPreferences.getInstance();
    final serverKey = prefs.getString('server_key');
    return serverKey ?? '';
  }
}
