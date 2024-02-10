import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class BookedPage extends StatelessWidget {
  const BookedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
          child: Text(
        'Booked Page',
      )),
    );
  }
}
