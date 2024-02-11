import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class KakiLimaTab extends StatelessWidget {
  const KakiLimaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Text('Kaki Lima'),
      ),
    );
  }
}
