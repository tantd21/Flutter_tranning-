import 'package:flutter/material.dart';

import 'package:login_register_firebase/pages/home_page.dart';
import 'package:login_register_firebase/pages/login_page.dart';
import 'package:login_register_firebase/pages/signup.dart';
import 'package:login_register_firebase/pages/widgets/welcome_screen.dart';



class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homePage = '/home_page';





  static Map<String, WidgetBuilder> routes = {
    welcomeScreen: (context) => const WelcomeScreen(),
    loginScreen: (context) => const LoginPage(),
    registerScreen: (context) => const SignUp(),
    homePage: (context) => const HomePage(),


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
