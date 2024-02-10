import 'package:dineinapp/screens/widgets/customtextfield_widget.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    appBar() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: background,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/imgs/profile.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/svgs/ic_location.svg',
                    width: 16,
                    height: 16,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Malang,',
                    style: blackText.copyWith(
                      fontSize: 12,
                      fontWeight: semibold,
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Indonesia',
                    style: blackText.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/ic_dropdown.svg',
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget greeting() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Halo, Gilang',
              style: blackText.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
            Text(
              'Mau makan\ndimana hari ini?',
              style: blackText.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: CustomTextField(
          icon: 'assets/svgs/ic_search.svg',
          hint: 'Cari restoran disini',
        ),
      );
    }

    return Scaffold(
      appBar: appBar(),
      backgroundColor: background,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          greeting(),
          searchBar(),
        ],
      ),
    );
  }
}
