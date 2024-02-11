import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabItem extends StatelessWidget {
  final String title;

  const TabItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(
        fontWeight: medium,
      ),
    );
  }
}
