import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.hint,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: TextFormField(
          obscureText: obscureText ? true : false,
          cursorColor: primary,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: greyText.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            filled: true,
            fillColor: Colors.white,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
