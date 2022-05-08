import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ebuy/screens/bottom_bar/cart_screen.dart';
import 'package:ebuy/screens/bottom_bar/home_screen.dart';
import 'package:ebuy/screens/bottom_bar/notifications.dart';
import 'package:ebuy/screens/bottom_bar/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Master extends StatefulWidget {
  const Master({required this.phone});
  final String phone;

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      HomeScreen(),
      NotificationScreen(),
      CartScreen(),
      ProfileScreen(
        phone: widget.phone,
      ),
    ];
    final items = [
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.notifications,
        size: 30,
      ),
      Icon(
        Icons.shopping_cart,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];

    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            backgroundColor: Colors.purple.shade50,
            body: screens[index],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: IconThemeData(color: Colors.black),
              ),
              child: CurvedNavigationBar(
                key: navigationKey,
                color: Color(0x40B1E0E9),
                items: items,
                height: 60,
                animationCurve: Curves.easeInOut,
                animationDuration: Duration(milliseconds: 300),
                index: index,
                backgroundColor: Colors.white,
                buttonBackgroundColor: Color(0x6051B6C8),
                onTap: (index) => setState(() {
                  this.index = index;
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
