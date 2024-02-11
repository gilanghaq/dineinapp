import 'package:dineinapp/screens/pages/tabs/cafe_tab.dart';
import 'package:dineinapp/screens/pages/tabs/kakilima_tab.dart';
import 'package:dineinapp/screens/pages/tabs/restoran_tab.dart';
import 'package:dineinapp/screens/pages/tabs/semua_tab.dart';
import 'package:dineinapp/screens/pages/tabs/warungmakan_tab.dart';
import 'package:dineinapp/screens/widgets/customtextfield_widget.dart';
import 'package:dineinapp/screens/widgets/tabitem_widget.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    appBar() {
      return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: background,
        surfaceTintColor: Colors.transparent,
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
        padding: EdgeInsets.symmetric(horizontal: 24),
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
        padding: EdgeInsets.symmetric(horizontal: 24),
        margin: EdgeInsets.only(top: 24),
        child: CustomTextField(
          icon: 'assets/svgs/ic_search.svg',
          hint: 'Cari restoran disini',
        ),
      );
    }

    TabBar tabsItem() {
      return TabBar(
        isScrollable: true,
        physics: BouncingScrollPhysics(),
        labelColor: white,
        unselectedLabelColor: black,
        indicatorWeight: 0,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(104),
          color: primary,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: [
          Tab(
            child: TabItem(title: 'Semua'),
          ),
          Tab(
            child: TabItem(title: 'Restoran'),
          ),
          Tab(
            child: TabItem(title: 'Cafe'),
          ),
          Tab(
            child: TabItem(title: 'Warung Makan'),
          ),
          Tab(
            child: TabItem(title: 'Kaki Lima'),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: appBar(),
      backgroundColor: background,
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxisScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  greeting(),
                  searchBar(),
                ],
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              pinned: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: tabsItem(),
              ),
            ),
          ],
          body: TabBarView(
            children: [
              SemuaTab(),
              RestoranTab(),
              CafeTab(),
              WarungMakanTab(),
              KakiLimaTab(),
            ],
          ),
        ),
      ),
    );
  }
}
