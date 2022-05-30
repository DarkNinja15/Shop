import 'package:flutter/material.dart';

import 'package:shop/models/products.dart';

class ProducstItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProducstItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
          trailing:
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
        ));
  }
}
