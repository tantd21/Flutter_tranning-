import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_firebase/components/custom_button.dart';
import 'package:login_register_firebase/components/my_text_field.dart';
import 'package:login_register_firebase/pages/forgot_password.dart';
import 'package:login_register_firebase/pages/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 112, 0),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back",
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Login down below!",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 25),
                  MyTextField(
                    controller: _emailController,
                    hintText: "Email",
                    obscureText: false,
                  ),
                  SizedBox(height: 10),
                  MyTextField(
                    controller: _passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  SizedBox(height: 25),
                  GestureDetector(
                  onTap: () {
                    // Perform sign up functionality here
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // Adjust button size
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                        fontSize: 30, // Adjust text size
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      
                      child: Text(
                        "Forgot Password ?",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not registered yet ? ",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
