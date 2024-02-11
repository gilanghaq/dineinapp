import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class CafeTab extends StatelessWidget {
  const CafeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Text('Cafe'),
      ),
    );
  }
}
