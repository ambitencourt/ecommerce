import 'package:flutter/widgets.dart';

class Product with ChangeNotifier {
  final String title;
  final String description;
  final String image;
  final double price;
  Product({
    this.title = '',
    this.description = '',
    this.image = '',
    this.price = 0,
  });

  funcList() {
    return Product;
  }
}
