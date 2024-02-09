import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardContent extends StatelessWidget {
  final String image, title, desc;

  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SvgPicture.asset(
          image,
        ),
        const SizedBox(
          height: 64,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: blackText.copyWith(
            fontSize: 32,
            fontWeight: semibold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            desc,
            textAlign: TextAlign.center,
            style: greyText.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
