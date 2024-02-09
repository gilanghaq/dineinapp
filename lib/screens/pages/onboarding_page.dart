import 'package:dineinapp/models/onboard_model.dart';
import 'package:dineinapp/screens/widgets/dotindicator_witget.dart';
import 'package:dineinapp/screens/widgets/onboardcontent_widget.dart';
import 'package:dineinapp/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_data.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => OnboardContent(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  desc: demo_data[index].desc,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demo_data.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: DotIndicator(isActive: index == _pageIndex),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 32),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _pageIndex == demo_data.length - 1
                    ? ElevatedButton(
                        key: UniqueKey(),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/sign-up');
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 19,
                          ),
                          child: Text(
                            'Get Started',
                            style: whiteText.copyWith(
                              fontSize: 18,
                              fontWeight: medium,
                            ),
                          ),
                        ),
                      )
                    : SizedBox(
                        key: UniqueKey(),
                        height: 64,
                        width: 64,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primary,
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/svgs/ic_arrow.svg',
                          ),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
