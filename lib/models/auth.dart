import 'dart:async';

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_lesson_one/data/data.dart';

class Auth extends GetxController {
  Dio dio = Dio();
  DateTime? expiryDate;
  Timer? _logoutTimer;

  static const webApiKey = 'AIzaSyAjKfSSl7th8cegZf7G-9LTGmhIIWKL1Ak';

  Future<void> _authenticate(
      String email, String password, String urlFragment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=$webApiKey';

    final data = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };

    final response = await dio.post(
      url,
      data: data,
    );

    final body = response.data;

    if (body['error'] != null) {
      // Altereiaqui
      // throw DioExceptions;
    } else {
      final token = body['idToken'];

      expiryDate = DateTime.now().add(
        Duration(
          seconds: int.parse(body['expiresIn']),
        ),
      );

      SecureStorage.writeToken('token', token);

      _autoLogout();
    }
  }

  Future<void> signup(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }

  Future<void> logout() async {
    SecureStorage.deleteToken('token');

    _clearLogoutTimer();
    Get.offAllNamed('/welcome');
  }

  void _clearLogoutTimer() {
    _logoutTimer?.cancel();
    _logoutTimer = null;
  }

  void _autoLogout() {
    _clearLogoutTimer();
    final timeToLogout = expiryDate?.difference(DateTime.now()).inSeconds;
    _logoutTimer = Timer(
      Duration(seconds: timeToLogout ?? 0),
      logout,
    );
  }
}
