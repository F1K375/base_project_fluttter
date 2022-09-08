import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceSetting {
  SharedPreferences? _sharedPreference;

  PreferenceSetting() {
    _init();
  }

  Future<void> _init() async {
    _sharedPreference = await SharedPreferences.getInstance();
  }

  String _encodedKey(String key) {
    final codec = const Latin1Codec().fuse(const Base64Codec());
    return codec.encode(key).removeAllWhitespace;
  }

  @protected
  void saveContentString(String key, String value) async {
    if (_sharedPreference == null) await _init();
    _sharedPreference?.setString(_encodedKey(key), value);
  }

  @protected
  Future<String> getContentString(String key) async {
    if (_sharedPreference == null) await _init();
    return _sharedPreference?.getString(_encodedKey(key)) ?? "";
  }

  @protected
  clearData(List<String> keys) async {
    if (_sharedPreference == null) await _init();
    for (var element in keys) {
      bool isRemoved =
          await _sharedPreference?.remove(_encodedKey(element)) ?? false;
      print('$element isremoved : $isRemoved');
    }
  }
}
