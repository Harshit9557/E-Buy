import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Notifications',
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: kSignUpContainerColor,
                            radius: 24,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Flexible(
                            child: Text(
                              'Get 50% off on your first shopping',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(
                    color: kDrawerDividerColor,
                    height: 23,
                  ),
                ),
              ),
              Text(
                'Yesterday',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 28,
              ),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: kSignUpContainerColor,
                            radius: 24,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Flexible(
                            child: Text(
                              'Get 50% off on your first shopping',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(
                    color: kDrawerDividerColor,
                    height: 23,
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
