import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/screens/product_detail_screen.dart';
import 'package:shop/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';
import './providers/products_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          primaryColor: Colors.purple,
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.roboto().fontFamily,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: ((context) => ProductDetailScreen()),
        },
      ),
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
