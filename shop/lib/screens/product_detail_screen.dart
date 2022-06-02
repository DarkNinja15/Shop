import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  static const routeName = '/product_detail';
  // const ProductDetailScreen({
  //   Key? key,
  //   required this.title,
  //   required this.price,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
