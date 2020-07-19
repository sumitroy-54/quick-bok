import 'package:flutter/material.dart';
import '../providers/shop_categories.dart';
import 'package:provider/provider.dart';
import './shop_nestedcategoryitem.dart';

class ShopNestedCategoryGrid extends StatelessWidget {
  const ShopNestedCategoryGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shopCategories = ShopCategories().getShopCategories;
    return GridView.builder(
      padding: const EdgeInsets.only(top: 5),
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: shopCategories.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        //the value property is used without context and automaticaaly clears data on Widget Unmount
        value: shopCategories[i],
        // create: (c) => shopCategories[i],
        child: ShopNestedCategoryItem(
          shopCategories[i].id,
          shopCategories[i].title,
          shopCategories[i].imageUrl,
        ),
      ),
    );
  }
}
