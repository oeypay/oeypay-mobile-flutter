import 'package:shared_preferences/shared_preferences.dart';

import '../models/response/auth_response_model.dart';

class Authlocaldatasource {
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('token', authResponseModel.toJson());
  }

  Future<void> removeDataAuth() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove('token');
  }

  Future<AuthResponseModel?> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString('token');
    return AuthResponseModel.fromJson(authData!);
  }

  Future<bool> isAuth() async {
    final pref = await SharedPreferences.getInstance();
    return pref.containsKey('token');
  }
}
