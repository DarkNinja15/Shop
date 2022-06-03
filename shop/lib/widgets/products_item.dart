import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop/providers/products.dart';
import 'package:shop/screens/product_detail_screen.dart';

class ProducstItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          child: GestureDetector(
            onTap: (() => Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product.id)),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
              onPressed: () {
                product.toogleFavoriteStatus();
              },
              icon: Icon(
                Icons.favorite,
                color: product.isFavorite ? Colors.red[600] : Colors.white,
              ),
            ),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          )),
    );
  }
}
