import 'package:ecommerce/modules/data/list_products.dart';
import 'package:ecommerce/shared/models/product_model.dart';
import 'package:flutter/material.dart';

class GridManager with ChangeNotifier {
  final List<Product> _listProducts = products;
  List<Product> get listProducts => [..._listProducts];
}
