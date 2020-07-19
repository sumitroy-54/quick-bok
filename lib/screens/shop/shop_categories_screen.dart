import 'package:flutter/material.dart';
import '../../widgets/shop_categories_grid.dart';

class ShopCategoriesScreen extends StatelessWidget {
  const ShopCategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Center(
        child: ShopCategoriesGrid(),
      ),
    );
  }
}
