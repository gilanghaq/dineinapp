import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class RestoranTab extends StatelessWidget {
  const RestoranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Text('Restoran'),
      ),
    );
  }
}
