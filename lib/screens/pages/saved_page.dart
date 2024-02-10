import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Text(
          'Saved Page',
        ),
      ),
    );
  }
}
