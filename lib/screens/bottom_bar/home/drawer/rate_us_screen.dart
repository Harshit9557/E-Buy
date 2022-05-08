import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateUsScreen extends StatefulWidget {
  const RateUsScreen({Key? key}) : super(key: key);

  @override
  _RateUsScreenState createState() => _RateUsScreenState();
}

class _RateUsScreenState extends State<RateUsScreen> {
  double initialRating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                "Feedback",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: kLoadingScreenTextColor,
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/drawer/rateus.png',
                  height: 220,
                  width: 220,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Center(
                child: Text(
                  'Share your valuable feedback',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Center(
                child: RatingBar(
                  initialRating: initialRating,
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
                  itemPadding: EdgeInsets.symmetric(horizontal: 3.33),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 43,
              ),
              //textfield
              TextFormField(
                minLines: 3,
                maxLines: 20,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Type here...',
                  hintStyle: TextStyle(
                    color: kWalletLightTextColor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kSignInContainerColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: kSignInContainerColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kSignInContainerColor),
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              //send button
              Center(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Container(
                      height: 40,
                      width: 173,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: kSignInContainerColor,
                      ),
                      child: Center(
                        child: Text(
                          "Send",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
