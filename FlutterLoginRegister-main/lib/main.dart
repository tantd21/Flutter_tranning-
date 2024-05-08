import 'package:flutter/material.dart';
import 'package:login_register_firebase/pages/login_page.dart'; // Import LoginPage instead of Authenticate

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), // Set LoginPage as the initial screen
    );
  }
}
