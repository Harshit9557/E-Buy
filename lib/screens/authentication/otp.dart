import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/authentication/login_screen.dart';
import 'package:ebuy/screens/bottom_bar/master_page.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTP extends StatefulWidget {
  const OTP({required this.phone, required this.flag});
  final String phone;
  final int flag;

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final FocusNode _pinPutFocusNode = FocusNode();
  final TextEditingController _pinPutController = TextEditingController();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: kScaffoldBackgroundColor,
    border: Border.all(
      color: kSignUpContainerColor,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Verify phone',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 19,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Text(
                  'Code is sent to ${widget.phone}',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: PinPut(
                  eachFieldHeight: 60,
                  eachFieldWidth: 56,
                  fieldsCount: 4,
                  autofocus: true,
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                  ),
                  focusNode: _pinPutFocusNode,
                  controller: _pinPutController,
                  submittedFieldDecoration: pinPutDecoration,
                  selectedFieldDecoration: pinPutDecoration,
                  followingFieldDecoration: pinPutDecoration,
                  pinAnimationType: PinAnimationType.fade,
                ),
              ),
              SizedBox(
                height: 62,
              ),
              RichText(
                text: TextSpan(
                    text: 'Didn\'t receive an OTP?  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xFF676767),
                    ),
                    children: [
                      TextSpan(
                        text: 'Resend OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: kSignInContainerColor,
                        ),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 72),
                child: GestureDetector(
                  onTap: () {
                    if (widget.flag == 1) {
                      setState(() {
                        flag = 0;
                      });
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    } else {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Master(
                            phone: widget.phone,
                          ),
                        ),
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kSignInContainerColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 16),
                      child: Text(
                        'Verify',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
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
