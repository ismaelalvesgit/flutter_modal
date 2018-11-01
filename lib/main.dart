import 'package:flutter/material.dart';
import 'package:modal/pages/home_page.dart';

void main() => runApp(App());


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teste de modais",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}


