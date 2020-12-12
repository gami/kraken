import 'dart:convert';

import 'package:pedantic/pedantic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesClient = Provider((ref) => SharedPreferencesClient());

class SharedPreferencesClient {
  Future<Map<String, dynamic>> getJson(String key) async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(key)) {
      return null;
    }
    return jsonDecode(
      prefs.getString(key) ?? '{}',
    ) as Map<String, dynamic>;
  }

  Future<void> saveJson(String key, Map<String, dynamic> json) async {
    final prefs = await SharedPreferences.getInstance();
    unawaited(prefs.setString(key, jsonEncode(json)));
  }
}
