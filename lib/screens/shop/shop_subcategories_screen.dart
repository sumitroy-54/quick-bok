import 'package:flutter/material.dart';
import '../../widgets/shop_subcategories_grid.dart';
import '../../widgets/shop_categories_grid.dart';

class ShopSubCategoriesScreen extends StatelessWidget {
  static const routeName = '/shop-sub-categories';

  @override
  Widget build(BuildContext context) {
    final categoryTitle = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.25,
                  child: ShopSubCategoriesGrid(),
                ),
                Divider(),
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.75,
                  child: Center(
                    child: ShopCategoriesGrid(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
