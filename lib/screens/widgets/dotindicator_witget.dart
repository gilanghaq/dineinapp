import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;

  const DotIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? primary : grey,
        borderRadius: BorderRadius.circular(104),
      ),
    );
  }
}
