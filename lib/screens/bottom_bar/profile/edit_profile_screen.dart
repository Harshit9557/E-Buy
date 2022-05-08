import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Edit Profile label
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: kLoadingScreenTextColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: kSplashScreenDescriptionColor,
                              ),
                            ),
                            Text(
                              "User/Vendor Name",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(
                              'assets/images/profile/user_profile/user_profile_image.png'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.5,
                    color: kDrawerDividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kSplashScreenDescriptionColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "6352414274",
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
                    height: 0.5,
                    color: kDrawerDividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "Gender",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kSplashScreenDescriptionColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Male",
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
                    height: 0.5,
                    color: kDrawerDividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "Birthday",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kSplashScreenDescriptionColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Add Birthday",
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
                    height: 0.5,
                    color: kDrawerDividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "Email Id",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kSplashScreenDescriptionColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Add email",
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
                    height: 0.5,
                    color: kDrawerDividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "Business Type",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kSplashScreenDescriptionColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Add Business Type",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: kLoadingScreenTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 44,
                right: 20,
                left: 20,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: kSignInContainerColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
