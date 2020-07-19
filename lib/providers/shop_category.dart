import 'package:flutter/foundation.dart';

class ShopCategory with ChangeNotifier {
  final String id;
  final String description;
  final double price;
  final String title;
  final String imageUrl;

  ShopCategory({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.imageUrl,
  });
}
