import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextFormField(
        autofocus: false,
        initialValue: '',
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          hintText: 'Pesquisar',
          hintStyle: const TextStyle(fontSize: 13),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[700],
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            color: Colors.grey[700],
            onPressed: () {},
          ),
        ),
        onFieldSubmitted: (text) {},
      ),
    );
  }
}
