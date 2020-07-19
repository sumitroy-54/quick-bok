import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_categories.dart';
import './shop_category_item.dart';

class ShopCategoriesGrid extends StatelessWidget {
  const ShopCategoriesGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final shopCategoriesData = Provider.of<ShopCategories>(context);
    final shopCategories = ShopCategories().getShopCategories;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      // scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: shopCategories.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        //the value property is used without context and automaticaaly clears data on Widget Unmount
        value: shopCategories[i],
        // create: (c) => shopCategories[i],
        child: ShopCategoryItem(
          shopCategories[i].id,
          shopCategories[i].title,
          shopCategories[i].imageUrl,
        ),
      ),
    );
  }
}
