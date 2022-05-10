import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final Image image;
  final double price;
  final int id;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price});
}

List<Product> demoProducts = [
  Product(
    id: 1,
    title: 'Blazer',
    description: 'Wear branded blazers to enhance your look',
    image: Image.asset(
      'assets/images/categories/blazer.jpg',
      fit: BoxFit.fill,
    ),
    price: 599.0,
  ),
  Product(
    id: 2,
    title: 'Jeans',
    description: 'Get the best quality jeans for your comfortable',
    image: Image.asset(
      'assets/images/categories/jeans.jpg',
      fit: BoxFit.fill,
    ),
    price: 599.0,
  ),
  Product(
    id: 3,
    title: 'Shirts',
    description: 'Newly arrived t-shirts just for you',
    image: Image.asset(
      'assets/images/categories/shirt.jpg',
      fit: BoxFit.fill,
    ),
    price: 599.0,
  ),
  Product(
    id: 4,
    title: 'T-Shirts',
    description: 'Wear branded blazers to enhance your look',
    image: Image.asset(
      'assets/images/categories/t-shirt.jpg',
      fit: BoxFit.fill,
    ),
    price: 599.0,
  ),
];
