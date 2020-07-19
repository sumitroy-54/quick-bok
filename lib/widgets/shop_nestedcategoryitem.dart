import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_category.dart';

class ShopNestedCategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ShopNestedCategoryItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final shopCategoryItem = Provider.of<ShopCategory>(context, listen: false);
    return GridTile(
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).pushNamed(
          //   ShopNestedCategoryScreen.routeName,
          //   arguments: shopCategoryItem.title,
          // );
        },
        child: Hero(
            // Can only be used when switching between different screens
            tag: shopCategoryItem.id,
            child: Column(
              // height: double.maxFinite,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      shopCategoryItem.imageUrl,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    shopCategoryItem.title,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
            // FadeInImage(
            //   placeholder: AssetImage('assets/images/product-placeholder.png'),
            //   image: NetworkImage(
            //     shopCategoryItem.imageUrl,
            //   ),
            //   fit: BoxFit.cover,
            // ),
            ),
      ),
    );
  }
}
