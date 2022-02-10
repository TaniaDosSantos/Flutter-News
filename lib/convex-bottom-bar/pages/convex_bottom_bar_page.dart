import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news/convex-bottom-bar/pages/cart_page.dart';
import 'package:flutter_news/convex-bottom-bar/pages/favorite_page.dart';
import 'package:flutter_news/convex-bottom-bar/pages/home_page.dart';
import 'package:flutter_news/convex-bottom-bar/pages/profile_page.dart';

class ConvexBottomBarPage extends StatefulWidget {
  const ConvexBottomBarPage({Key? key}) : super(key: key);

  @override
  _ConvexBottomBarPageState createState() => _ConvexBottomBarPageState();
}

class _ConvexBottomBarPageState extends State<ConvexBottomBarPage> {
  int selectedPage = 0;
  final _pages = [
    const HomePage(),
    const FavoritePage(),
    const CartPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Convex Bottom Bar'),
      ),
      body: Center(
        child: _pages.elementAt(selectedPage),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.favorite, title: 'Favorite'),
          TabItem(icon: Icons.shopping_cart, title: 'Cart'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: selectedPage,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
