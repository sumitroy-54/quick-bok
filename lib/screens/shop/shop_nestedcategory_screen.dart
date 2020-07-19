import 'package:flutter/material.dart';
import '../../widgets/shop_nestedcategory_grid.dart';

class ShopNestedCategoryScreen extends StatelessWidget {
  static const routeName = '/shop-nested';

  @override
  Widget build(BuildContext context) {
    final subCategoryTitle =
        ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(subCategoryTitle),
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
                      0.15,
                  child: ShopNestedCategoryGrid(),
                ),
                Divider(),
                Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.85,
                  child: Center(
                    child: Center(
                      child: Text('data'),
                    ),
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
