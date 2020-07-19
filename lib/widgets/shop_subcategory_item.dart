import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_category.dart';
import '../screens/shop/shop_nestedcategory_screen.dart';

class ShopSubCategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ShopSubCategoryItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final shopCategoryItem = Provider.of<ShopCategory>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ShopNestedCategoryScreen.routeName,
              arguments: shopCategoryItem.title,
            );
          },
          child: Hero(
            // Can only be used when switching between different screens
            tag: shopCategoryItem.id,
            child: FadeInImage(
              placeholder: AssetImage('assets/images/product-placeholder.png'),
              image: NetworkImage(
                shopCategoryItem.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            shopCategoryItem.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
