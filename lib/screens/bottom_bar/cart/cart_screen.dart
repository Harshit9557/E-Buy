import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/cart/cart_item_card.dart';
import 'package:ebuy/screens/bottom_bar/cart/cart_items.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

final cartItems = [
  'blazer',
  'jeans',
  'shirt',
  't-shirt',
];

class _CartScreenState extends State<CartScreen> {
  int blazerCount = 1;
  int jeansCount = 1;
  int shirtCount = 1;
  int tShirtCount = 1;
  final count = [
    'blazerCount',
    'jeansCount',
    'shirtCount',
    'tShirtCount',
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Text(
              'Cart',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 19,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '${cartDemoItems.length} items',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: kPlansDescriptionTextColor,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView.builder(
              itemCount: cartDemoItems.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Dismissible(
                  key: Key(cartDemoItems[index].product.id.toString()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    setState(() {
                      cartDemoItems.removeAt(index);
                    });
                  },
                  background: Container(
                    decoration: BoxDecoration(
                      color: Color(0x40B1E0E9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Icon(
                            Icons.delete_outline_outlined,
                            color: kSignUpContainerColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: CartItemCard(
                    cart: cartDemoItems[index],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -15),
                    blurRadius: 20,
                    color: Color(0xFFDADADA).withOpacity(0.15),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFF5F6F9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.receipt_long_outlined,
                            color: kSignInContainerColor,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Add Voucher Code',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: kPlansDescriptionTextColor,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12,
                          color: kPlansDescriptionTextColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "Total\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: "1168",
                                style: TextStyle(
                                  color: kSignInContainerColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
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
                                  'Proceed To Payment',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                              ),
                            ),
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
    );
  }
}
