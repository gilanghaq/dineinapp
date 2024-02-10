import 'package:dineinapp/cubit/page_cubit.dart';
import 'package:dineinapp/screens/pages/booked_page.dart';
import 'package:dineinapp/screens/pages/home_page.dart';
import 'package:dineinapp/screens/pages/profile_page.dart';
import 'package:dineinapp/screens/pages/saved_page.dart';
import 'package:dineinapp/screens/widgets/custombottomnav_item.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return BookedPage();
        case 2:
          return SavedPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: black.withOpacity(.1),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavItem(
                  index: 0,
                  unselectedicon: 'assets/svgs/ic_home.svg',
                  selectedicon: 'assets/svgs/ic_home_filled.svg',
                ),
                CustomBottomNavItem(
                  index: 1,
                  unselectedicon: 'assets/svgs/ic_calendar.svg',
                  selectedicon: 'assets/svgs/ic_calendar_filled.svg',
                ),
                CustomBottomNavItem(
                  index: 2,
                  unselectedicon: 'assets/svgs/ic_bookmark.svg',
                  selectedicon: 'assets/svgs/ic_saved_filled.svg',
                ),
                CustomBottomNavItem(
                  index: 3,
                  unselectedicon: 'assets/svgs/ic_user.svg',
                  selectedicon: 'assets/svgs/ic_user_filled.svg',
                ),
              ],
            ),
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: background,
          body: Stack(
            children: [
              buildContent(currentIndex),
              customBottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
