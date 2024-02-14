import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowCard extends StatelessWidget {
  const RowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 232,
              height: 108,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/imgs/img_1.png',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(left: 8, top: 8),
                width: 52,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(104),
                  color: Color(0xffF5BC6D),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/ic_star.svg',
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      '4.9',
                      style: whiteText.copyWith(
                        fontSize: 12,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 232,
          height: 72,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                'SaigonSan Restaurant & Rooftop Terrace',
                overflow: TextOverflow.ellipsis,
                style: blackText.copyWith(
                  fontSize: 14,
                  fontWeight: semibold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/ic_location.svg',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Kauman Klojen',
                        style: blackText.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/ic_airplane.svg',
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '4.1 km',
                        style: blackText.copyWith(
                          fontSize: 12,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
