import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'shop/shop_categories_screen.dart';
import './tab2_screen.dart';
import './tab3_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    ShopCategoriesScreen(),
    Tab2Screen(),
    Tab3Screen(),
  ];

  // int _selectedPageIndex = 0;

  // void _selectPage(int index) {
  //   setState(() {
  //     _selectedPageIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return //Shows tab bar beneath the App Bar
        DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Quick Book',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          bottom: TabBar(
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Theme.of(context).primaryColor,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("SHOP"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("FOOD"),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 0)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("VIDEO"),
                    ),
                  ),
                ),
              ]),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        // body: TabBarView(
        //   children: <Widget>[
        //     Tab1Screen(),
        //     Tab2Screen(),
        //     Tab3Screen(),
        //   ],
        // ),

        body: Stack(
          children: <Widget>[
            TabBarView(
              children: <Widget>[
                ShopCategoriesScreen(),
                Tab2Screen(),
                Tab3Screen(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
