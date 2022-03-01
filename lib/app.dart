import 'package:flutter/material.dart';
import 'package:flutter_news/bunny_search_animated_searchbar/pages/search_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SearchPage(),
    );
  }
}