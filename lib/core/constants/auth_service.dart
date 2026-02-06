import '../../data/datasources/auth_local_datasource.dart';

class AuthService {
  static final AuthService _instance = AuthService._internal();

  factory AuthService() {
    return _instance;
  }

  AuthService._internal();
  late int userID = 1;

  Future<void> fetchAuthData() async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();

      if (authData != null && authData.user != null) {
        if (authData.user.idx != 0) {
          userID = authData.user.idx;
        } else {
          userID = 1;
        }
      } else {
        userID = 1;
      }
    } catch (e) {
      userID = 1;
    }
  }
}
