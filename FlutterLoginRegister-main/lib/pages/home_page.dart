import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_firebase/pages/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: user != null
            ? LoggedInWidget(user: user)
            : LoginPageWidget(), // Chuyển hướng đến LoginPage nếu chưa đăng nhập
      ),
    );
  }
}

class LoggedInWidget extends StatelessWidget {
  final User user;

  const LoggedInWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Signed in as ${user.email}",
          style: GoogleFonts.aclonica(
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
          ),
          child: MaterialButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text("Sign out"),
          ),
        )
      ],
    );
  }
}

class LoginPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You are not signed in",
            style: GoogleFonts.aclonica(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.green, // Đổi màu nút để chuyển hướng đến trang đăng nhập
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text("Sign in"),
            ),
          )
        ],
      ),
    );
  }
}
