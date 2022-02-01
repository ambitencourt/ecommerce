import 'package:ecommerce/modules/data/list_products.dart';
import 'package:ecommerce/shared/models/product_model.dart';
import 'package:ecommerce/shared/utils/grid_manager.dart';
import 'package:ecommerce/shared/widgets/card_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_pagewise/flutter_pagewise.dart';

class GridProducts extends StatefulWidget {
  const GridProducts({Key? key}) : super(key: key);

  @override
  State<GridProducts> createState() => _GridProductsState();
}

class _GridProductsState extends State<GridProducts> {
  @override
  Widget build(BuildContext context) {
    final listProduct = Provider.of<GridManager>(context, listen: true);
    const int pageSize = 6;

    final listProductsFinal = listProduct.listProducts;

    return PagewiseGridView<Product>.count(
      pageSize: pageSize,
      crossAxisCount: 2,
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      childAspectRatio: 0.555,
      padding: const EdgeInsets.all(15.0),
      // pageFuture: (pageIndex) =>
      //     listProduct.listProducts(pageIndex! * pageSize, pageSize),
      itemBuilder: (context, entry, index) => ChangeNotifierProvider.value(
        value: listProductsFinal[index],
        child: const CardProduct(),
      ),
    );
  }
}
