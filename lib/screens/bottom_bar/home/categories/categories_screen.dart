import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/home/categories/blazer_information_screen.dart';
import 'package:ebuy/screens/bottom_bar/home/categories/jeans_information_screen.dart';
import 'package:ebuy/screens/bottom_bar/home/categories/shirts_information_screen.dart';
import 'package:ebuy/screens/bottom_bar/home/categories/tshirts_information_screen.dart';
import 'package:ebuy/screens/speech_screen.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final categoriesList = [
      'Blazer',
      'Jeans',
      'Shirts',
      'T-Shirts',
    ];
    final categoriesDescriptionList = [
      'Wear branded blazers to enhance your look',
      'Get the best quality jeans for your comfortable',
      'Now choose shirts from 1000 different brands',
      'Newly arrived t-shirts just for you',
    ];
    final categoriesImages = [
      CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(
          'assets/images/categories/blazer.jpg',
        ),
      ),
      CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(
          'assets/images/categories/jeans.jpg',
        ),
      ),
      CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(
          'assets/images/categories/shirt.jpg',
        ),
      ),
      CircleAvatar(
        radius: 60,
        backgroundImage: AssetImage(
          'assets/images/categories/t-shirt.jpg',
        ),
      ),
    ];
    final categoriesScreenList = [
      BlazerInformationScreen(),
      JeansInformationScreen(),
      ShirtsInformationScreen(),
      TShirtsInformationScreen(),
    ];

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Categories label
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: kLoadingScreenTextColor,
              ),
            ),
          ),
          //search box
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 34, right: 34),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: kCircleBorderColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.search_outlined,
                        size: 20,
                        color: kSignInContainerColor,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.filter_alt_outlined,
                            size: 20,
                            color: kSignInContainerColor,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SpeechScreen(),
                            ),
                          ),
                          child: Icon(
                            Icons.mic_none_outlined,
                            size: 20,
                            color: kSignInContainerColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height - 196,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 25),
              child: ListView.separated(
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => categoriesScreenList[index],
                      ),
                    ),
                    child: Container(
                      height: 150,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: Container(
                              width: width - 80,
                              height: 130,
                              decoration: BoxDecoration(
                                color: kSignUpContainerColor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 120, top: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      categoriesList[index].toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 40, top: 10),
                                      child: RichText(
                                        text: TextSpan(
                                          text: categoriesDescriptionList[index]
                                              .toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 14,
                            left: 41,
                            child: CircleAvatar(
                              radius: 70,
                              backgroundColor: Colors.white,
                            ),
                          ),
                          Positioned(
                            bottom: 23,
                            left: 50,
                            child: categoriesImages[index],
                          ),
                          Positioned(
                            bottom: 34,
                            right: 52,
                            child: GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      categoriesScreenList[index],
                                ),
                              ),
                              child: Container(
                                width: 27,
                                height: 27,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: kLoadingScreenTextColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
