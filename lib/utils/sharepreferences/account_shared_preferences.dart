import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../domain/authentication/user/user_domain.dart';
import 'preference_setting.dart';

@injectable
class AccountSharedPreferences extends PreferenceSetting {
  static const LOGIN_TOKEN = "loginSharedToken";
  static const LOGIN_DATA = "loginSharedData";
  static const TOKEN_DEVICE = "tokenDeviceSharedData";

  void _setToken(String value) {
    saveContentString(LOGIN_TOKEN, value);
  }

  Future<String> getToken() async {
    return await getContentString(LOGIN_TOKEN);
  }

  void setTokenDevice(String value) {
    saveContentString(TOKEN_DEVICE, value);
  }

  Future<String> getTokenDevice() async {
    return await getContentString(TOKEN_DEVICE);
  }

  Future<UserDomain?> loginData() async {
    final data = await getContentString(LOGIN_DATA);
    return data.isNotEmpty ? UserDomain.fromJson(jsonDecode(data)) : null;
  }

  void setLoginData(UserDomain? value) =>
      value != null ? _saveLoginData(value) : null;

  void _saveLoginData(UserDomain value) {
    _setToken(value.accessToken);
    saveContentString(LOGIN_DATA, value.toString());
  }

  void setUserData(UserDomain? value) =>
      value != null ? _saveUserData(value) : null;

  void _saveUserData(UserDomain value) {
    saveContentString(LOGIN_DATA, value.toString());
  }

  Future<UserDomain> getUserData() async {
    final stringData = await getContentString(LOGIN_DATA);
    return UserDomain.fromJson(json.decode(stringData));
  }

  Future<bool> isLogin() async {
    final result = await getToken();
    print('login token : $result');
    return result.isNotEmpty;
  }

  logOut() async {
    await clearData([LOGIN_DATA, LOGIN_TOKEN, TOKEN_DEVICE]);
  }
}
