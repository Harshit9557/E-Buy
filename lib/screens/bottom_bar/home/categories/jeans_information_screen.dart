import 'package:ebuy/constants.dart';
import 'package:flutter/material.dart';

class JeansInformationScreen extends StatefulWidget {
  const JeansInformationScreen({Key? key}) : super(key: key);

  @override
  State<JeansInformationScreen> createState() => _JeansInformationScreenState();
}

class _JeansInformationScreenState extends State<JeansInformationScreen> {
  int selectedColor = 1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              color: Color(0x99B1E0E9),
            ),
            //initial container data
            Positioned(
              top: 40,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Text(
                      'Jeans',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    width: width / 2 - 10,
                    child: Text(
                      'Get the best quality jeans for your comfortable',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: kSignInContainerColor,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          '599.0',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //bottom container data
            Positioned(
              bottom: 0,
              top: 220,
              child: SingleChildScrollView(
                child: Container(
                  width: width,
                  height: height - 140,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(28),
                      topLeft: Radius.circular(28),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //color label
                      Text(
                        'Color',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      //color available
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedColor == 1
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: GestureDetector(
                                  onTap: () => setState(() {
                                    selectedColor = 1;
                                  }),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red.shade800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedColor == 2
                                      ? Colors.black
                                      : Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: GestureDetector(
                                    onTap: () => setState(() {
                                      selectedColor = 2;
                                    }),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.brown,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: selectedColor == 3
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: GestureDetector(
                                  onTap: () => setState(() {
                                    selectedColor = 3;
                                  }),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      //item description label
                      Text(
                        'Item Description',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      //item description
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          width: width - 40,
                          child: Text(
                            'Very well designed piece, most comfortable, highly fashioned, attractive and efficient jeans just for you',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                      //specifications label
                      Text(
                        'Specifications',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      //specifications
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Brand Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    'Rating',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Manufactured In',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    'Water Resistant',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Return Policy',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    ':',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    ':',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.grey.shade700,
                                    ),
                                  ),
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    '4.8',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ),
                                Text(
                                  'India',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Available',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 17,
                                    color: Colors.grey.shade500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: kSignUpContainerColor),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.add_shopping_cart,
                                  color: kSignInContainerColor,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: kSignInContainerColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Buy',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: height - 570,
              child: Container(
                height: 200,
                width: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/categories/jeans.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
