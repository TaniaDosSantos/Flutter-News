import 'package:flutter/material.dart';
import 'package:flutter_news/polls/polls_page.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: PollsPage(),
    );
  }
}