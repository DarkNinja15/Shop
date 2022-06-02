import 'package:flutter/material.dart';

import 'package:shop/models/products.dart';
import 'package:shop/screens/product_detail_screen.dart';

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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: (() => Navigator.of(context)
                .pushNamed(ProductDetailScreen.routeName, arguments: id)),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
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
          )),
    );
  }
}
