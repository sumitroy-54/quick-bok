import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/shop_category.dart';
import '../screens/shop/shop_subcategories_screen.dart';
//Temporary Remove later
import 'dart:math';

class ShopCategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ShopCategoryItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final shopCategoryItem = Provider.of<ShopCategory>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ShopSubCategoriesScreen.routeName,
              arguments: shopCategoryItem.title,
            );
          },
          child: Hero(
            // Can only be used when switching between different screens
            tag: new Random(),
            child: FadeInImage(
              placeholder: AssetImage('assets/images/product-placeholder.png'),
              image: NetworkImage(
                shopCategoryItem.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // header: ,
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          //To monitor changes limiting to Favorite button
          // leading: Consumer<Product>(
          //   builder: (ctx, product, _) => IconButton(
          //     icon: Icon(
          //       product.isFavorite ? Icons.favorite : Icons.favorite_border,
          //     ),
          //     color: Theme.of(context).accentColor,
          //     onPressed: () {
          //       product.toggleFavouriteStatus(
          //         authData.token,
          //         authData.userId,
          //       );
          //     },
          //   ),
          // ),
          title: Text(
            shopCategoryItem.title,
            textAlign: TextAlign.center,
          ),
          // trailing: IconButton(
          //   icon: Icon(Icons.shopping_cart),
          //   color: Theme.of(context).accentColor,
          //   onPressed: () {
          //     // cart.addItem(product.id, product.price, product.title);
          //     // Scaffold.of(context).hideCurrentSnackBar();
          //     // Scaffold.of(context).showSnackBar(
          //     //   SnackBar(
          //     //     content: Text(
          //     //       'Item Added to Cart',
          //     //     ),
          //     //     duration: Duration(seconds: 3),
          //     //     action: SnackBarAction(
          //     //       label: 'UNDO',
          //     //       onPressed: () {
          //     //         cart.removeSingleItem(product.id);
          //     //       },
          //     //     ),
          //     //   ),
          //     // );
          //   },
          // ),
        ),
      ),
    );
  }
}
