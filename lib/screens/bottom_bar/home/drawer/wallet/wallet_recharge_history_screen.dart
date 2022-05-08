import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';

class WalletRechargeHistoryScreen extends StatefulWidget {
  const WalletRechargeHistoryScreen({Key? key}) : super(key: key);

  @override
  State<WalletRechargeHistoryScreen> createState() =>
      _WalletRechargeHistoryScreenState();
}

class _WalletRechargeHistoryScreenState
    extends State<WalletRechargeHistoryScreen> {
  final months = ['March 2022', 'February 2022', 'January 2022'];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
              //Wallet Recharge History label
              Text(
                "Wallet Recharge History",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: kLoadingScreenTextColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Container(
                  width: width,
                  height: height,
                  child: ListView.separated(
                    itemCount: months.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            months[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 107,
                            decoration: BoxDecoration(
                              color: kHomeScreenServicesContainerColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListView.separated(
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Initiated on Mar 15, 2022 03:25 PM",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: kLoadingScreenTextColor,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Pending",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: kSignInContainerColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Transaction ID: 42613",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: kWalletLightTextColor,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "₹1500",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: kLoadingScreenTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                                separatorBuilder: (context, index) => Divider(
                                  color: kSignUpContainerColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
