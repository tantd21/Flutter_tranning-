import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon; // Thêm thuộc tính suffixIcon

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon, // Đặt giá trị cho thuộc tính suffixIcon
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText && _obscureText, // Kết hợp cả widget.obscureText và _obscureText
        decoration: InputDecoration(
          prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.suffixIcon != null ? buildSuffixIcon() : null, // Sử dụng suffixIcon nếu được cung cấp
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(
            color: Colors.grey[300],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget buildSuffixIcon() {
    return IconButton(
      icon: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off,
      ),
      onPressed: () {
        setState(() {
          _obscureText = !_obscureText;
        });
      },
    );
  }
}
