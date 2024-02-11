import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class WarungMakanTab extends StatelessWidget {
  const WarungMakanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Text('Warung Makan'),
      ),
    );
  }
}
