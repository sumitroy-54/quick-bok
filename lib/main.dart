import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/bottom_navigation_screen.dart';
import './screens/shop/shop_subcategories_screen.dart';
import './screens/shop/shop_nestedcategory_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Map<int, Color> color = {
    50: Color.fromRGBO(0, 150, 136, .1),
    200: Color.fromRGBO(0, 150, 136, .3),
    100: Color.fromRGBO(0, 150, 136, .2),
    300: Color.fromRGBO(0, 150, 136, .4),
    400: Color.fromRGBO(0, 150, 136, .5),
    500: Color.fromRGBO(0, 150, 136, .6),
    600: Color.fromRGBO(0, 150, 136, .7),
    700: Color.fromRGBO(0, 150, 136, .8),
    800: Color.fromRGBO(0, 150, 136, .9),
    900: Color.fromRGBO(0, 150, 136, 1),
  };

  @override
  Widget build(BuildContext context) {
    MaterialColor colorCustom = MaterialColor(0xFF009688, color);
    return MaterialApp(
      title: 'Quick Book',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: colorCustom,
          accentColor: colorCustom,
          hintColor: Colors.black,
          canvasColor: Colors.white //Color.fromRGBO(255, 254, 229, 1),
          ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => BottomNavigationScreen(),
        ShopSubCategoriesScreen.routeName: (ctx) => ShopSubCategoriesScreen(),
        ShopNestedCategoryScreen.routeName: (ctx) => ShopNestedCategoryScreen(),
        // MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        // FiltersScreen.routeName: (ctx) => FiltersScreen(_filters, _setFilters),
      },
    );
  }
}
