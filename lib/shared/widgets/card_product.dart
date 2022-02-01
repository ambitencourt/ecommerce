import 'package:ecommerce/shared/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({Key? key}) : super(key: key);

  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    final Product product = Provider.of<Product>(context, listen: false);
    return LayoutBuilder(
      builder: (_, constraints) {
        return GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: GridTile(
                footer: GridTileBar(
                  subtitle: Wrap(
                    children: [
                      Center(
                        child: Text(
                          product.title,
                          style: const TextStyle(fontSize: 12),
                          maxLines: 3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.black87,
                ),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/det_product', arguments: product);
          },
        );
      },
    );
  }
}
