import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/home/drawer/wallet/transaction_history/statement_screen.dart';
import 'package:flutter/material.dart';

class TransactionHistoryScreen extends StatefulWidget {
  const TransactionHistoryScreen({Key? key}) : super(key: key);

  @override
  State<TransactionHistoryScreen> createState() =>
      _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
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
              Text(
                "Transaction History",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: kLoadingScreenTextColor,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kHomeScreenServicesContainerColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //start date label
                      Text(
                        "Start Date",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: kWalletLightTextColor,
                        ),
                      ),
                      //start date
                      Padding(
                        padding: const EdgeInsets.only(top: 9, bottom: 4),
                        child: Row(
                          children: [
                            Text(
                              "01 Mar 2022",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                  'assets/icons/wallet/calendar.png'),
                            ),
                          ],
                        ),
                      ),
                      //divider
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: kSignUpContainerColor,
                      ),
                      //end date label
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 12),
                        child: Text(
                          "End Date",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: kWalletLightTextColor,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "14 Mar 2022",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: kLoadingScreenTextColor,
                            ),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child:
                                Image.asset('assets/icons/wallet/calendar.png'),
                          ),
                        ],
                      ),
                      //divider
                      Padding(
                        padding: const EdgeInsets.only(top: 4, bottom: 17),
                        child: Container(
                          height: 1,
                          width: double.infinity,
                          color: kSignUpContainerColor,
                        ),
                      ),
                      //button
                      Center(
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => StatementScreen(),
                            ),
                          ),
                          child: Container(
                            height: 40,
                            width: 173,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: kSignInContainerColor,
                            ),
                            child: Center(
                              child: Text(
                                "Get Statement",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
