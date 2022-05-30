import 'package:flutter/material.dart';
import 'package:shop/screens/products_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsOverviewScreen(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopApp'),
      ),
      body: Center(
        child: Text('Lets build'),
      ),
    );
  }
}
