import 'package:ecommerce/shared/widgets/drawer.dart';
import 'package:ecommerce/shared/widgets/grid_products.dart';
import 'package:ecommerce/shared/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerMenu(context),
      appBar: AppBar(
        title: const Search(),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        toolbarHeight: 100,
      ),
      body: const GridProducts(),
    );
  }
}
