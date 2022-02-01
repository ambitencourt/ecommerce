import 'package:ecommerce/shared/utils/grid_manager.dart';
import 'package:ecommerce/shared/widgets/card_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listProduct = Provider.of<GridManager>(context, listen: true);

    final listProductsFinal = listProduct.listProducts;

    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      scrollDirection: Axis.vertical,
      itemCount: listProductsFinal.length,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: listProductsFinal[index],
        child: const CardProduct(),
      ),
    );
  }
}
