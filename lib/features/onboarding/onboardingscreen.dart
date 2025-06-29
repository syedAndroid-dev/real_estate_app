import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  final PageController _pageController = PageController();
  bool hasPreviousPage = false;
  double barprogress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/ic_logo.png', height: 80),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Auth');
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color(0xFFDFDFDF),
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                    ),
                    child: Text(
                      'skip',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Find best place \nto stay in good price',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed.',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      PageView(
                        controller: _pageController,
                        onPageChanged: (currentPage) {
                          setState(() {
                            hasPreviousPage = currentPage > 0;
                            barprogress = currentPage / 2;
                          });
                        },
                        children: [
                          Image.asset(
                            width: double.infinity,
                            height: double.infinity,
                            'assets/images/ic_onboarding_01.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            width: double.infinity,
                            height: double.infinity,
                            'assets/images/ic_onboarding_02.png',
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            width: double.infinity,
                            height: double.infinity,
                            'assets/images/ic_onboarding_03.png',
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          spacing: 10,
                          children: [
                            AnimatedSwitcher(
                              duration: Duration(milliseconds: 500),
                              transitionBuilder:
                                  (child, animation) => ScaleTransition(
                                    scale: animation,
                                    child: child,
                                  ),
                              child:
                                  hasPreviousPage
                                      ? GestureDetector(
                                        onTap: () {
                                          _pageController.previousPage(
                                            duration: Duration(
                                              milliseconds: 900,
                                            ),
                                            curve: Curves.easeOut,
                                          );
                                        },
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.arrow_back),
                                        ),
                                      )
                                      : SizedBox(width: 45, height: 45),
                            ),

                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                LinearPercentIndicator(
                                  width: 60.0,
                                  lineHeight: 14.0,
                                  percent: barprogress,
                                  backgroundColor: Colors.grey,
                                  progressColor: Colors.white,
                                  barRadius: Radius.circular(20),
                                  padding: EdgeInsets.only(bottom: 10),
                                ),

                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 60.0,
                                      vertical: 14.0,
                                    ),
                                    backgroundColor: Color(0xFF8BC83F),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {
                                    _pageController.nextPage(
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeIn,
                                    );
                                  },
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 45, height: 45),
                          ],
                        ),
                      ),
                    ],
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
