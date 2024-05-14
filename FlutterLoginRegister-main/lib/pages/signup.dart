import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_firebase/components/my_text_field.dart';
import 'package:login_register_firebase/pages/login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Controllers
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Hello',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.red, // Set color of "Hello" to red
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: '\nthere!',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Create an account to access your package history and get real-time updates on all your shipments.",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 32),

                  
Column(
  children: [
    
    MyTextField(
  controller: _usernameController,
  hintText: "Username",
  obscureText: false,
  prefixIcon: Icons.person,
),
    MyTextField(
      controller: _emailController,
      hintText: "Enter your mail/phone number",
      obscureText: false,
      prefixIcon: Icons.email,
    ),
    SizedBox(height: 16),

    MyTextField(
      controller: _passwordController,
      hintText: "Password",
      obscureText: true,
      prefixIcon: Icons.lock,
      suffixIcon: Icons.visibility, // Icon hiển thị mật khẩu
    ),
    SizedBox(height: 16),

    MyTextField(
      controller: _confirmPasswordController,
      hintText: "Re-type your password",
      obscureText: true,
      prefixIcon: Icons.lock,
      suffixIcon: Icons.visibility, // Icon hiển thị mật khẩu
    ),
    SizedBox(height: 16),

    MyTextField(
      controller: _phoneController,
      hintText: "Phone Number",
      obscureText: false,
      prefixIcon: Icons.phone,
    ),
    SizedBox(height: 32),
  ],
),

                  // Sign Up button
                  GestureDetector(
                    onTap: () {
                      // Perform sign up functionality here
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Or continue with Google
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 51, 51, 51),
                          ),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 16),

                  GestureDetector(
                    onTap: () {
                      // Perform sign up with Google functionality here
                    },
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/google_logo.png', height: 24),
                            const SizedBox(width: 8),
                            Text(
                              "Continue with Google",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Already have an account
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          " Sign In",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
