import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String? icon;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.hint,
    this.icon,
    this.obscureText = false,
  }) : super(key: key);

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
        child: Row(
          children: [
            if (icon != null)
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: SvgPicture.asset(
                  icon!,
                  width: 24,
                  height: 24,
                ),
              ),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
