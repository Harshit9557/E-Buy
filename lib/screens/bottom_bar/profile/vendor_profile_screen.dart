import 'package:ebuy/components/custom_switch.dart';
import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/authentication/login_screen.dart';
import 'package:ebuy/screens/bottom_bar/home/annual_plan/annual_plan_main_screen.dart';
import 'package:ebuy/screens/bottom_bar/home/annual_plan/renew_plan.dart';
import 'package:ebuy/screens/bottom_bar/home/drawer/wallet/transaction_history/transaction_history_screen.dart';
import 'package:ebuy/screens/bottom_bar/profile/post_offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VendorProfileScreen extends StatefulWidget {
  const VendorProfileScreen({Key? key}) : super(key: key);

  @override
  State<VendorProfileScreen> createState() => _VendorProfileScreenState();
}

class _VendorProfileScreenState extends State<VendorProfileScreen> {
  final photosList = [
    AssetImage('assets/images/profile/vendor_profile/photos/1.png'),
    AssetImage('assets/images/profile/vendor_profile/photos/2.png'),
    AssetImage('assets/images/profile/vendor_profile/photos/3.png'),
  ];
  final reviews = [
    'Popular',
    'All',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: width - 150,
                width: width - 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Stack(
                  children: [
                    Container(
                      width: width - 48,
                      height: width - 205,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/profile/vendor_profile/vendor_profile_background_image.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 12,
                      top: 12,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFEE7),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 18,
                      child: Stack(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/profile/vendor_profile/vendor_profile_pic.png',
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: kUserProfileImageChangeContainerColor,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vendor/Business Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: kLoadingScreenTextColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 7),
                      child: Text(
                        "Area Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kPlansDescriptionTextColor,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "4.0",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: kLoadingScreenTextColor,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RatingBar(
                          initialRating: 4.0,
                          itemSize: 17,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          glowColor: kCreditPointScaffoldBackgroundColor,
                          ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star,
                              color: kSelectedStarColor,
                            ),
                            half: Icon(
                              Icons.star_half,
                              color: kSelectedStarColor,
                            ),
                            empty: Icon(
                              Icons.star_border_outlined,
                              color: kWalletLightTextColor,
                            ),
                          ),
                          itemPadding: EdgeInsets.symmetric(horizontal: 0),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "90 Ratings ",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12,
                            color: kLoadingScreenTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                                'assets/images/profile/vendor_profile/contact.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                  'assets/images/profile/vendor_profile/location.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                                'assets/images/profile/vendor_profile/bookmarked.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.black12),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                  'assets/images/profile/vendor_profile/share.png'),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => showModalBottomSheet(
                            enableDrag: true,
                            isDismissible: false,
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25),
                              ),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 10, bottom: 46),
                                      child: Container(
                                        width: 70,
                                        height: 3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: kSignUpContainerColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //status
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle_outline,
                                              color: Colors.black54,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 11,
                                            ),
                                            Text(
                                              "Status: Active",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 14,
                                                color: kLoadingScreenTextColor,
                                              ),
                                            ),
                                            Spacer(),
                                            CustomSwitch(
                                                isActive: true,
                                                activeColor:
                                                    kSignInContainerColor,
                                                inActiveColor: kHintTextColor)
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Container(
                                            height: 0.5,
                                            color: kDrawerDividerColor,
                                          ),
                                        ),
                                        //my transaction
                                        GestureDetector(
                                          onTap: () =>
                                              Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  TransactionHistoryScreen(),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.change_circle,
                                                color: Colors.black54,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 11,
                                              ),
                                              Text(
                                                "My Transaction",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color:
                                                      kLoadingScreenTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Container(
                                            height: 0.5,
                                            color: kDrawerDividerColor,
                                          ),
                                        ),
                                        //Check Plans
                                        GestureDetector(
                                          onTap: () =>
                                              Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  AnnualPlanMainScreen(),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.lock_outline,
                                                color: Colors.black54,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 11,
                                              ),
                                              Text(
                                                "Check Plans",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color:
                                                      kLoadingScreenTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Container(
                                            height: 0.5,
                                            color: kDrawerDividerColor,
                                          ),
                                        ),
                                        //renew validity
                                        GestureDetector(
                                          onTap: () =>
                                              Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  RenewAnnualPlanScreen(),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.lock_outline,
                                                color: Colors.black54,
                                                size: 20,
                                              ),
                                              SizedBox(
                                                width: 11,
                                              ),
                                              Text(
                                                "Renew Validity",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color:
                                                      kLoadingScreenTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Container(
                                            height: 0.5,
                                            color: kDrawerDividerColor,
                                          ),
                                        ),
                                        //post offer
                                        GestureDetector(
                                          onTap: () =>
                                              Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PostOfferScreen(),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Image.asset(
                                                  'assets/images/profile/vendor_profile/post_offer.png'),
                                              SizedBox(
                                                width: 11,
                                              ),
                                              Text(
                                                "Post an Offer",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color:
                                                      kLoadingScreenTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 15),
                                          child: Container(
                                            height: 0.5,
                                            color: kDrawerDividerColor,
                                          ),
                                        ),
                                        //logout
                                        GestureDetector(
                                          onTap: () =>
                                              Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen(),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.logout,
                                                color: Colors.black54,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "Logout",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                  color:
                                                      kLoadingScreenTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black12),
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                                'assets/images/profile/user_profile/more.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0x116C6464),
                              Color(0xFFE7E7E7),
                              Color(0x116C6464),
                            ],
                          ),
                        ),
                      ),
                    ),
                    //rate
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rate This",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: RatingBar(
                              initialRating: 0.0,
                              itemSize: 30,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              glowColor: kCreditPointScaffoldBackgroundColor,
                              ratingWidget: RatingWidget(
                                full: Icon(
                                  Icons.star,
                                  color: kSelectedStarColor,
                                ),
                                half: Icon(
                                  Icons.star_half,
                                  color: kSelectedStarColor,
                                ),
                                empty: Icon(
                                  Icons.star_border_outlined,
                                  color: kWalletLightTextColor,
                                ),
                              ),
                              itemPadding: EdgeInsets.symmetric(horizontal: 5),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 34),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              'assets/images/profile/vendor_profile/map.png'),
                          SizedBox(
                            width: 32,
                          ),
                          Flexible(
                            child: Text(
                              '167, 707, 1st Main Rd, 4th Phase, Yelahanka New Town, Bengaluru, Karnataka 560064',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/profile/vendor_profile/address.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              'assets/images/profile/vendor_profile/clock.png'),
                          SizedBox(
                            width: 32,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Open Now',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: kSignInContainerColor,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    '10:00 am - 9:00 pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: kLoadingScreenTextColor,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Monday - Friday',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 23),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              'assets/images/profile/vendor_profile/contact.png'),
                          SizedBox(
                            width: 32,
                          ),
                          Text(
                            '1283636653, 7463940425',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Photos",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          SizedBox(
                            height: 100,
                            width: width,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: photosList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: photosList[index],
                                      )),
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                width: 10,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Reviews & Ratings",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: kLoadingScreenTextColor,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kHomeScreenServicesContainerColor,
                          ),
                          child: Center(
                            child: Text(
                              "4.0",
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Text(
                            "90 Ratings\nRating index based on 90 ratings across the web",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 19),
                      child: Text(
                        "QR Code",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: kLoadingScreenTextColor,
                        ),
                      ),
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/scan/qr_code.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Vendor’s Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kLoadingScreenTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26,
                    ),
                    Center(
                      child: GestureDetector(
                        // onTap: () => Navigator.of(context).push(
                        //   MaterialPageRoute(
                        //     builder: (context) => StatementScreen(),
                        //   ),
                        // ),
                        child: Container(
                          height: 50,
                          width: width - 68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: kSignInContainerColor,
                          ),
                          child: Center(
                            child: Text(
                              "Download QR Code",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0x116C6464),
                            Color(0xFFE7E7E7),
                            Color(0x116C6464),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 19),
                      child: Text(
                        "User Reviews",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: kLoadingScreenTextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                color: selectedIndex == index
                                    ? kHomeScreenServicesContainerColor
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: selectedIndex == index
                                      ? Color(0xFF67BFCF)
                                      : Color(0xFFDADADA),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  reviews[index],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: selectedIndex == index
                                        ? kSignInContainerColor
                                        : Color(0xFFDADADA),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                          width: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: SizedBox(
                        height: 185,
                        child: ListView.separated(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundImage: AssetImage(
                                          'assets/images/profile/user_profile/user_profile_image.png'),
                                    ),
                                    SizedBox(
                                      width: 9,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "User123",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            color: kLoadingScreenTextColor,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 1, bottom: 1),
                                          child: Text(
                                            "2 Reviews",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 11,
                                              color: kLoadingScreenTextColor,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "5.0",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: kLoadingScreenTextColor,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            RatingBar(
                                              initialRating: 5.0,
                                              itemSize: 17,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              glowColor:
                                                  kCreditPointScaffoldBackgroundColor,
                                              ratingWidget: RatingWidget(
                                                full: Icon(
                                                  Icons.star,
                                                  color: kSelectedStarColor,
                                                ),
                                                half: Icon(
                                                  Icons.star_half,
                                                  color: kSelectedStarColor,
                                                ),
                                                empty: Icon(
                                                  Icons.star_border_outlined,
                                                  color: kWalletLightTextColor,
                                                ),
                                              ),
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 0),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black12,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.thumb_up_alt_outlined,
                                                color: kLoadingScreenTextColor,
                                                size: 10,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 11.4),
                                              child: Container(
                                                height: 20,
                                                width: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                    color: Colors.black12,
                                                  ),
                                                ),
                                                child: Icon(
                                                  Icons.messenger_outline,
                                                  color:
                                                      kLoadingScreenTextColor,
                                                  size: 10,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 20,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black12,
                                                ),
                                              ),
                                              child: Icon(
                                                Icons.share_outlined,
                                                color: kLoadingScreenTextColor,
                                                size: 10,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(
                            height: 34,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: width - 68,
                      child: Stack(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Add Review...',
                              hintStyle: TextStyle(
                                color: kPlansDescriptionTextColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              prefixIconColor: kHintTextColor,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 13,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: kPlansDescriptionTextColor),
                                gapPadding: 10,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: kPlansDescriptionTextColor),
                                gapPadding: 10,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: kPlansDescriptionTextColor),
                                gapPadding: 10,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 12,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: kHomeScreenServicesContainerColor,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: kSignUpContainerColor,
                                  ),
                                ),
                                child: Icon(
                                  Icons.arrow_upward,
                                  size: 20,
                                  color: kSignInContainerColor,
                                ),
                              ),
                            ),
                          )
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
