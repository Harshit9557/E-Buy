import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/home/categories/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var offerCard = Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/offer_image.jpeg",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 200,
            width: 280,
            decoration: const BoxDecoration(
              color: Color(0x50000000),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(
                  500,
                ),
              ),
            ),
          ),
          Positioned(
            top: 51,
            left: 25,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      color: const Color(0x70FFFFFF),
                      width: 30,
                      height: 1,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    const Text(
                      "GET FLAT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      color: const Color(0x70FFFFFF),
                      width: 30,
                      height: 1,
                    ),
                  ],
                ),
                const Text(
                  "20% OFF",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "on your first order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
    final offerCards = [
      offerCard,
      offerCard,
      offerCard,
      offerCard,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 19,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 22,
              ),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment
                      .bottomRight, // 10% of the width, so there are ten blinds.
                  colors: <Color>[
                    Colors.redAccent.shade100,
                    Colors.red.shade50,
                  ], // red to yellow
                  tileMode: TileMode.repeated,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/offer_image.jpeg",
                    ),
                    backgroundColor: Colors.white,
                    radius: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "UserName",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "guestuser@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 47, right: 33),
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //My Bookings
                    TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //       builder: (context) => const MyBookings()),
                        // );
                      },
                      child: const Text(
                        "My Bookings",
                        //style: white14w300,
                      ),
                    ),
                    //Need Help
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (context) => NeedHelp(),
                    //       ),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "Need Help",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //Contact Us
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (context) => Contact(),
                    //       ),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "Contact Us",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //My Wallet
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //           builder: (context) => const WalletScreen()),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "My Wallet",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //Feedback
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (context) => FeedBack(),
                    //       ),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "Give us feedback",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //Get Notifications
                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //     left: 8,
                    //     top: 8,
                    //     bottom: 8,
                    //   ),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       const Text(
                    //         "Get notifications",
                    //         style: white14w300,
                    //       ),
                    //       CustomSwitch(
                    //         isActive: true,
                    //         activeColor: const Color(0xFF59B2C6),
                    //         inActiveColor: const Color(0xFF909090),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    //Credit Points
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(builder: (context) => CreditPoints()),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "Credit points",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //Add Hotel
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(builder: (context) => AddHotel()),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "Add hotel",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //Share app
                    // TextButton(
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(builder: (context) => ReferEarn()),
                    //     );
                    //   },
                    //   child: const Text(
                    //     "Share the app",
                    //     style: white14w300,
                    //   ),
                    // ),
                    //Log Out
                    // TextButton(
                    //   onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),),),
                    //   child: const Text(
                    //     "Log Out",
                    //     style: white14w300,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, User Name!",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: kLoadingScreenTextColor,
                ),
              ),
              Text(
                "Delhi",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xFF929292),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: offerCards.length,
                  itemBuilder: (context, index) {
                    return offerCards[index];
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: offerCards.length,
                  effect: WormEffect(
                    spacing: 10,
                    dotColor: kOnBoardingScreenUnselectedDotColor,
                    activeDotColor: kSignInContainerColor,
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
              //categories label
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: kLoadingScreenTextColor,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CategoriesScreen(),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              //categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //blazer
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/categories/blazer.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Color(0x50000000),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Blazer',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //jeans
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/categories/jeans.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0x50000000),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Jeans',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //shirt
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 180,
                        width: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/categories/shirt.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Color(0x50000000),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Shirts',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //t-shirts
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 180,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/categories/t-shirt.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            height: 180,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Color(0x50000000),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'T-Shirts',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //explore items label
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Explore Items",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: kLoadingScreenTextColor,
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: width / 2 + 14,
                          width: width / 2 - 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/categories/blazer.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 4),
                        child: Text(
                          'Blazer',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Text(
                        '599.0',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: width / 2 + 14,
                          width: width / 2 - 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/categories/jeans.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 4),
                        child: Text(
                          'Jeans',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Text(
                        '599.0',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: width / 2 + 14,
                            width: width / 2 - 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/categories/shirt.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 4),
                          child: Text(
                            'Shirt',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Text(
                          '599.0',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: width / 2 + 14,
                            width: width / 2 - 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/categories/t-shirt.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 4),
                          child: Text(
                            'T-Shirt',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Text(
                          '599.0',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: width - 30,
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kHomeScreenServicesContainerColor,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width - 180,
                          child: Text(
                            'Upgrade to Premium to high discount and free delivery',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 27,
                            width: 93,
                            decoration: BoxDecoration(
                              color: kSignInContainerColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                'Know More',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: kSignUpContainerColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Positioned(
                            left: -8,
                            top: -10,
                            child: Image.asset(
                              'assets/images/premium_offer_container.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
