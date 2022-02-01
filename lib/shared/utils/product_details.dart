import 'package:ecommerce/shared/widgets/custom_sizedbox.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/shared/models/product_model.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  final Product? product;

  const ProductDetails({
    Key? key,
    this.product,
  }) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    if (widget.product == null) return const SizedBox.shrink();
    return ChangeNotifierProvider.value(
      value: widget.product,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              widget.product!.title,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          centerTitle: true,
          // actions: [
          //   IconButton(
          //     icon: Icon(Icons.help),
          //     onPressed: () async {
          //       await showDialog<Widget>(
          //         context: context,
          //         builder: (_) => Stack(children: [Ajuda()]),
          //       );
          //     },
          //   )
          // ],
        ),
        body: SizedBox(
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  controller: _controller,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                      child: AspectRatio(
                        aspectRatio: 2,
                        child: Image.asset(
                          widget.product!.image,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                    customSizedBox10(),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Problema'),
                          Text(
                            widget.product!.title,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    customSizedBox10(),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Resumo do problema:",
                          ),
                          Text(
                            widget.product!.title,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
