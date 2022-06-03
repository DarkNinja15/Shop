import 'package:flutter/foundation.dart';

class Products with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;
  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void toogleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
