import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';

class EBuyMembershipPlanScreen extends StatefulWidget {
  const EBuyMembershipPlanScreen({Key? key}) : super(key: key);

  @override
  State<EBuyMembershipPlanScreen> createState() =>
      _EBuyMembershipPlanScreenState();
}

class _EBuyMembershipPlanScreenState extends State<EBuyMembershipPlanScreen> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //ANNUAL PLAN  label
              Center(
                child: Text(
                  "ANNUAL PLAN",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: kLoadingScreenTextColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 45),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: kPlansDescriptionTextColor,
                        offset: Offset.zero,
                        spreadRadius: 0.1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 26),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "NearBii Membership Plan",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                  softWrap: true,
                                  text: TextSpan(
                                    text: '₹',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: kLoadingScreenTextColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '499',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20,
                                          color: kLoadingScreenTextColor,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '/year',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: kLoadingScreenTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 7),
                                  child: Text(
                                    "₹1499/year",
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                      color: kSplashScreenDescriptionColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "For Listing a Business/Service, Premium Membership and Renewal",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: kPlansDescriptionTextColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 190,
                        width: double.infinity,
                        color: kHomeScreenServicesContainerColor,
                        child: Image.asset(
                            'assets/images/membership_plan/ebuy_membership_plan.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 37, 20, 64),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: kSignUpContainerColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  child: Text(
                                    "Nearbii annual membership. ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: kSignUpContainerColor,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Get 100% cashback in the form of nearbii reward points in your nearbii wallet. ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: kSignUpContainerColor,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Flexible(
                                  child: Text(
                                    "Access to all the features of promotions. ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: kSignUpContainerColor,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Valid for 1year",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
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
              GestureDetector(
                // onTap: () => Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => BusinessServicesDetailsScreen(),
                //   ),
                // ),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kSignInContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Make Payment",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 61,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
