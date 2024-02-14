import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TileCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final double distance;
  final double rating;

  const TileCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    this.distance = 0.0,
    this.rating = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      width: double.infinity,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 132,
            height: 132,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: blackText.copyWith(
                    fontSize: 14,
                    fontWeight: semibold,
                  ),
                ),
                Text(
                  location,
                  overflow: TextOverflow.ellipsis,
                  style: blackText.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/svgs/ic_star.svg',
                          width: 14,
                          height: 14,
                          color: Color(0xffFDC707),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          rating.toString(),
                          style: blackText.copyWith(
                            fontSize: 12,
                            fontWeight: regular,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16,
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
                          '${distance.toString()} km',
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
          ),
        ],
      ),
    );
  }
}
