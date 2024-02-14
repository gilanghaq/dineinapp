import 'package:dineinapp/screens/widgets/customtextfield_widget.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dineinapp/models/tabitem_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _itemIndex = 0;
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

    Widget tabBar() {
      Widget mainBody() {
        return Container(
          margin: EdgeInsets.only(top: 24),
          padding: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tempat Populer',
                style: blackText.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
            ],
          ),
        );
      }

      return Column(
        children: [
          Container(
            height: 36,
            width: double.infinity,
            color: Colors.transparent,
            child: IntrinsicWidth(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  physics: BouncingScrollPhysics(),
                  itemCount: item_data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            _itemIndex = index;
                          },
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        margin: const EdgeInsets.only(right: 16),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: _itemIndex == index ? primary : white,
                          borderRadius: BorderRadius.circular(104),
                        ),
                        child: Center(
                          child: Text(
                            item_data[index].title,
                            style: _itemIndex == index
                                ? whiteText.copyWith(
                                    fontSize: 12,
                                    fontWeight: semibold,
                                  )
                                : blackText.copyWith(
                                    fontSize: 12,
                                    fontWeight: regular,
                                  ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),

          //MAIN BODY
          mainBody()
        ],
      );
    }

    return Scaffold(
      appBar: appBar(),
      backgroundColor: background,
      body: ListView(
        children: [
          greeting(),
          searchBar(),
          tabBar(),
        ],
      ),
    );
  }
}
