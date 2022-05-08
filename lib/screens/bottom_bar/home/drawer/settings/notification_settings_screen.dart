import 'package:ebuy/components/custom_switch.dart';
import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  @override
  Widget build(BuildContext context) {
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
                size: 20,
                color: kLoadingScreenTextColor,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //notification settings label
            Text(
              "Notification Settings",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: kLoadingScreenTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 26),
              child: Column(
                children: [
                  //new business
                  Row(
                    children: [
                      Text(
                        "New Businesses",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      CustomSwitch(
                        isActive: true,
                        activeColor: const Color(0xFF59B2C6),
                        inActiveColor: const Color(0xFF909090),
                      ),
                    ],
                  ),
                  //new features
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Text(
                          "New Features of NearBii",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        CustomSwitch(
                          isActive: true,
                          activeColor: const Color(0xFF59B2C6),
                          inActiveColor: const Color(0xFF909090),
                        ),
                      ],
                    ),
                  ),
                  //trending
                  Row(
                    children: [
                      Text(
                        "Trending on NearBii",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      CustomSwitch(
                        isActive: true,
                        activeColor: const Color(0xFF59B2C6),
                        inActiveColor: const Color(0xFF909090),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //similar businesses
                  Row(
                    children: [
                      Text(
                        "Similar Businesses",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.radio_button_off_outlined,
                        size: 20,
                        color: kWalletLightTextColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
