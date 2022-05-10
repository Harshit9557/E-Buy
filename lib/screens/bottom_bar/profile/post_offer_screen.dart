import 'package:ebuy/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostOfferScreen extends StatefulWidget {
  const PostOfferScreen({Key? key}) : super(key: key);

  @override
  State<PostOfferScreen> createState() => _PostOfferScreenState();
}

class _PostOfferScreenState extends State<PostOfferScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 35,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_ios,
                size: 18,
                color: kLoadingScreenTextColor,
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              GestureDetector(
                // onTap: () => Navigator.pop(context),
                child: Text(
                  "Done",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: kLoadingScreenTextColor,
                  ),
                ),
              ),
              SizedBox(
                width: 34,
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Business 1",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "| Write what’s on your mind",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: kAdvertiseContainerTextColor,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: width - 48,
                    height: width - 48,
                    decoration: BoxDecoration(
                      color: kAdvertiseContainerTextColor,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/post_ad.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    child: Container(
                      width: width - 180,
                      decoration: BoxDecoration(
                        color: kSignInContainerColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Text(
                          "60% OFF ",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 5),
                child: Text(
                  "60% OFF",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: kWalletLightTextColor,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                color: kWalletLightTextColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 159, bottom: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Add to your post",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kLoadingScreenTextColor,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: kLoadingScreenTextColor,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.photo_library_outlined,
                          color: kLoadingScreenTextColor,
                          size: 20,
                        ),
                      ],
                    )
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
