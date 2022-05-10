import 'package:ebuy/constants.dart';
import 'package:ebuy/screens/bottom_bar/cart/cart_items.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    required this.cart,
  });
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 88,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: cart.product.image,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cart.product.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text.rich(
                  TextSpan(
                    text: cart.product.price.toString(),
                    style: TextStyle(
                      color: kSignInContainerColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: "  x${cart.numOfItems}",
                        style: TextStyle(
                          color: kPlansDescriptionTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
