import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    final onBoardingScreens = [
      Container(
        child: Column(
          children: [
            SizedBox(
              height: height - 600,
            ),
            Container(
              height: height / 2.5,
              width: width,
              decoration: BoxDecoration(
                color: kScaffoldBackgroundColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding/1.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            RichText(
              text: TextSpan(
                text: 'Welcome to E-Buy',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            SizedBox(
              height: height - 600,
            ),
            Container(
              height: height / 2.5,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding/2.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            RichText(
              text: TextSpan(
                text: 'Shop Online at Cheaper Rates',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Column(
          children: [
            SizedBox(
              height: height - 600,
            ),
            Container(
              height: height / 2.5,
              width: width,
              decoration: BoxDecoration(
                color: kScaffoldBackgroundColor,
                image: DecorationImage(
                  image: AssetImage('assets/images/onboarding/3.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            RichText(
              text: TextSpan(
                text: "Let's Get Started",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onBoardingScreens.length,
              itemBuilder: (context, index) {
                return onBoardingScreens[index];
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                    child: Text(
                      'SKIP',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kOnBoardingScreenSkipColor,
                      ),
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: onBoardingScreens.length,
                      effect: WormEffect(
                        spacing: 13,
                        dotColor: kOnBoardingScreenUnselectedDotColor,
                        activeDotColor: kOnBoardingScreenNextColor,
                        dotHeight: 7,
                        dotWidth: 7,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (currentPage == onBoardingScreens.length - 1) {
                        // final prefs = await SharedPreferences.getInstance();
                        // prefs.setBool('showLoginScreen', true);

                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      } else {
                        controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: kOnBoardingScreenNextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
