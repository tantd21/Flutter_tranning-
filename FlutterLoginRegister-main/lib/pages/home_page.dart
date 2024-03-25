import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register_firebase/pages/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,245,239,231),
      body: Center(
        child: LoginPageWidget(), // Chuyển hướng đến LoginPage nếu chưa đăng nhập
      ),
    );
  }
}
class LoginPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1.0), // Điều chỉnh khoảng cách ở phía trên hình ảnh logo
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Thêm hình ảnh logo vào đây
          Image.asset(
            'assets/logo.png', // Đường dẫn đến hình ảnh logo của bạn
            width: 300, // Đặt kích thước cho logo
            height: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Welcome to TrumAmThuc \nExplore a wide range of dishes and delivery services right to your door.",
            textAlign: TextAlign.center,
            style: GoogleFonts.aclonica(
              fontSize: 18,
              color: Color.fromARGB(255, 60, 33, 33),
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