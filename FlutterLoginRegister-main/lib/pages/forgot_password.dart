import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_firebase/components/custom_button.dart';
import 'package:login_register_firebase/components/my_text_field.dart';

class ForgotPassword extends StatelessWidget {
  final _resetPasswordController = TextEditingController();

  Future<void> resetPassword(BuildContext context) async {
    // Thực hiện chức năng đặt lại mật khẩu ở đây
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple[400],
          content: Text(
            "Password reset link sent, check your email",
            style: GoogleFonts.poppins(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Login now",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot password",
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 50,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.healing_sharp,
                size: 120,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Forgot your password ?",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  "Send your email and we will send a password reset link",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MyTextField(
                hintText: "Enter your email...",
                obscureText: false,
                controller: _resetPasswordController,
              ),
              SizedBox(
                height: 40,
              ),
              MyButton(
                onTap: () => resetPassword(context),
                textContent: "Reset",
              )
            ],
          ),
        ),
      ),
    );
  }
}
