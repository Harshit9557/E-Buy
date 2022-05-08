import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/home/drawer/wallet/transaction_history/transaction_history_screen.dart';
import 'package:ebuy/screens/bottom_bar/home/drawer/wallet/wallet_recharge_history_screen.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
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
              //my wallet label
              Text(
                "My Wallet",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: kLoadingScreenTextColor,
                ),
              ),
              //wallet balance
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Container(
                  height: 71,
                  width: 163,
                  decoration: BoxDecoration(
                    color: kSignUpContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Wallet Balance",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "₹1000",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //add money label
              Text(
                "Add Money",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: kLoadingScreenTextColor,
                ),
              ),
              //add money container
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 23),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kHomeScreenServicesContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 51, 17, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "₹ 1500",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: kLoadingScreenTextColor,
                          ),
                        ),
                        Divider(
                          color: kSignUpContainerColor,
                        ),
                        SizedBox(
                          width: width,
                          height: 20,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                width: width / 5 - 23,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(61),
                                  border: Border.all(
                                    color: kWalletScreenContainerColor,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "+ ₹1000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 8.54,
                                      color: kSignInContainerColor,
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => SizedBox(
                              width: 5,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //add money button
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 40,
                              width: 173,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: kSignInContainerColor),
                              child: Center(
                                child: Text(
                                  "Add Money",
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
              ),
              Row(
                children: [
                  //wallet recharge history
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WalletRechargeHistoryScreen(),
                      ),
                    ),
                    child: Container(
                      height: 71,
                      width: width / 2 - 50,
                      decoration: BoxDecoration(
                        color: kSignUpContainerColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  'assets/icons/wallet/payment 1.png',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Wallet Recharge History",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: kLoadingScreenTextColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TransactionHistoryScreen(),
                      ),
                    ),
                    child: Container(
                      height: 71,
                      width: width / 2 - 40,
                      decoration: BoxDecoration(
                        color: kSignUpContainerColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  'assets/icons/wallet/bill 1.png',
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Transaction\nHistory",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: kLoadingScreenTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //wallet summary label
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 20),
                child: Text(
                  "Wallet Summary",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: kLoadingScreenTextColor,
                  ),
                ),
              ),
              //wallet summary container
              Padding(
                padding: const EdgeInsets.only(bottom: 155),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kHomeScreenServicesContainerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(11, 13, 13, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Last recharge amount",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "₹1500",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Text(
                                "Balance after last recharge",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: kLoadingScreenTextColor,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "₹1571",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: kLoadingScreenTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Bill since last reacharge",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "₹1540",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: kLoadingScreenTextColor,
                              ),
                            ),
                          ],
                        ),
                      ],
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
