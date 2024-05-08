import 'package:flutter/material.dart';

import 'package:login_register_firebase/pages/login_page.dart';
import 'package:login_register_firebase/pages/signup.dart';



class AppRoutes {

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';






  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => const LoginPage(),
    registerScreen: (context) => const SignUp(),


  };

    // Hàm để điều hướng đến màn hình đăng nhập
  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, loginScreen);
  }

  // Hàm để điều hướng đến màn hình đăng ký
  static void goToRegister(BuildContext context) {
    Navigator.pushNamed(context, registerScreen);
  }
}
