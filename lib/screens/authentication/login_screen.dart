import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/authentication/otp.dart';
import 'package:ebuy/screens/authentication/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

int flag = 0;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final mobileController = TextEditingController();
  @override
  void dispose() {
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Login',
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
          padding: EdgeInsets.symmetric(horizontal: 31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              //Image
              Center(
                child: Container(
                  height: 198,
                  width: 198,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/login.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              //Enter number label
              Padding(
                padding: EdgeInsets.fromLTRB(0, 21, 0, 41),
                child: Text(
                  'Enter Your Mobile Number',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              //textfield
              TextFormField(
                controller: mobileController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Mobile No',
                  hintStyle: TextStyle(
                    color: kHintTextColor,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 13,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide(color: kTextFormFieldBorderColor),
                    gapPadding: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide(color: kTextFormFieldBorderColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide(color: kTextFormFieldBorderColor),
                    gapPadding: 10,
                  ),
                ),
              ),
              //send button
              Padding(
                padding: EdgeInsets.only(top: 55, bottom: 72),
                child: GestureDetector(
                  onTap: () {
                    if (mobileController.text != null &&
                        mobileController.text.length == 10)
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OTP(
                            phone: mobileController.text,
                            flag: flag,
                          ),
                        ),
                      );
                    else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                              'Enter Valid Contact Number',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: Text(
                                  'OK',
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red.shade800,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 16),
                      child: Text(
                        'Send OTP',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              //social network label
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Or login with ',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: kHintTextColor,
                      ),
                      children: [
                        TextSpan(
                          text: ' Social Networks',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.redAccent,
                          ),
                        ),
                      ]),
                ),
              ),
              //social networks
              Padding(
                padding: EdgeInsets.only(top: 12.65, bottom: 75.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        'assets/icons/icons8-google.svg',
                        height: 35,
                        width: 35,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.apple,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.facebook,
                        size: 34,
                        color: Colors.blue.shade800,
                      ),
                    ),
                  ],
                ),
              ),
              //register label
              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'New to The Hours? ',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: kHintTextColor,
                    ),
                    children: [
                      TextSpan(
                        text: ' Register',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.redAccent,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                ),
                              },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
