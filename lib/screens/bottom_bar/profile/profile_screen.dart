import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/profile/user_profile_screen.dart';
import 'package:ebuy/screens/bottom_bar/profile/vendor_profile_screen.dart';
import 'package:flutter/material.dart';

bool isUserProfile = true;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({required this.phone});
  final String phone;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(
              width: 35,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: kLoadingScreenTextColor,
              ),
            ),
          ],
        ),
        actions: [
          isUserProfile
              ? Row(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        isUserProfile = !isUserProfile;
                      }),
                      child: Image.asset(
                        'assets/icons/exchange.png',
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                  ],
                )
              : Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                          'assets/images/profile/user_profile/add.png'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () => setState(() {
                        isUserProfile = !isUserProfile;
                      }),
                      child: Image.asset(
                        'assets/icons/exchange.png',
                      ),
                    ),
                    SizedBox(
                      width: 34,
                    ),
                  ],
                ),
        ],
      ),
      body: isUserProfile ? UserProfileScreen() : VendorProfileScreen(),
    );
  }
}
