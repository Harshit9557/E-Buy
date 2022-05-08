import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/authentication/login_screen.dart';
import 'package:ebuy/screens/bottom_bar/profile/edit_profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

bool isListBusiness = false;

class UserProfileScreen extends StatefulWidget {
  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
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
                            'assets/images/profile/user_profile/profile_background_image.png',
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
                                      'assets/images/profile/user_profile/user_profile_image.png',
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
                padding: const EdgeInsets.only(top: 23, bottom: 20),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "User123",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: kLoadingScreenTextColor,
                        ),
                      ),
                      Text(
                        "2 REVIEWS",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: kPlansDescriptionTextColor,
                        ),
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
                                  'assets/images/profile/user_profile/add.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => EditProfileScreen(),
                                ),
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
                                    'assets/images/profile/user_profile/edit.png'),
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
                                  'assets/images/profile/user_profile/bookmarks.png'),
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          GestureDetector(
                            onTap: () => showModalBottomSheet(
                              enableDrag: true,
                              isDismissible: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25),
                                ),
                              ),
                              context: context,
                              builder: (BuildContext context) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isListBusiness =
                                                    !isListBusiness;
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                Image.asset(
                                                    'assets/images/profile/user_profile/list_business.png'),
                                                SizedBox(
                                                  width: 12,
                                                ),
                                                Text(
                                                  "List Business/Service",
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
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 15),
                                            child: Container(
                                              height: 0.5,
                                              color: kDrawerDividerColor,
                                            ),
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
                    ],
                  ),
                ),
              ),
              isListBusiness
                  ? SizedBox(
                      height: 550,
                      child: ListView.separated(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 28,
                                    backgroundImage: AssetImage(
                                        'assets/images/profile/vendor_profile/vendor_profile_pic.png'),
                                  ),
                                  SizedBox(
                                    width: 9,
                                  ),
                                  Text(
                                    "Business ${index + 1}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 230,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(50, 20, 0, 0),
                                  child: ListView.separated(
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      color:
                                                          kLoadingScreenTextColor,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 3, bottom: 10),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          "5.0",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 16,
                                                            color:
                                                                kLoadingScreenTextColor,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        RatingBar(
                                                          initialRating: 5.0,
                                                          itemSize: 17,
                                                          direction:
                                                              Axis.horizontal,
                                                          allowHalfRating: true,
                                                          itemCount: 5,
                                                          glowColor:
                                                              kCreditPointScaffoldBackgroundColor,
                                                          ratingWidget:
                                                              RatingWidget(
                                                            full: Icon(
                                                              Icons.star,
                                                              color:
                                                                  kSelectedStarColor,
                                                            ),
                                                            half: Icon(
                                                              Icons.star_half,
                                                              color:
                                                                  kSelectedStarColor,
                                                            ),
                                                            empty: Icon(
                                                              Icons
                                                                  .star_border_outlined,
                                                              color:
                                                                  kWalletLightTextColor,
                                                            ),
                                                          ),
                                                          itemPadding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      0),
                                                          onRatingUpdate:
                                                              (rating) {
                                                            print(rating);
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    "Amazing work! Totally satisfied.",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 13,
                                                      color:
                                                          kLoadingScreenTextColor,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 12,
                                                  ),
                                                  Text(
                                                    "Edit",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12,
                                                      color:
                                                          kSplashScreenDescriptionColor,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite_outline,
                                                size: 10,
                                                color:
                                                    kSplashScreenDescriptionColor,
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 34,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(top: 21, bottom: 17),
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
                      ),
                    )
                  : SizedBox(
                      height: 0,
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
