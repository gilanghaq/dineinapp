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

class HomePageDraft extends StatefulWidget {
  const HomePageDraft({Key? key}) : super(key: key);

  @override
  _HomePageDraftState createState() => _HomePageDraftState();
}

class _HomePageDraftState extends State<HomePageDraft> {
  bool isSliverAppBarExpanded = false;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        isSliverAppBarExpanded =
            _scrollController.hasClients && _scrollController.offset > 0;
      });
    });
  }

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
          if (isSliverAppBarExpanded)
            IconButton(
              icon: SvgPicture.asset(
                'assets/svgs/ic_search.svg',
                color: black,
                width: 28,
                height: 28,
              ),
              onPressed: () {},
            ),
          if (!isSliverAppBarExpanded) SizedBox(width: 48),
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

  Widget tabsItem() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: TabBar(
        labelColor: white,
        unselectedLabelColor: black,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.transparent,
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
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
              automaticallyImplyLeading: false,
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
