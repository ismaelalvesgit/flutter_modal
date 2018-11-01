import 'package:flutter/material.dart';
import 'package:modal/pages/exemplo1_page.dart';
import 'package:modal/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {

  final _pageController = PageController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: const Text("Exemplos"),
            centerTitle: true,
          ),
          drawer: DrawerWidget(_pageController),
          body: Container(
            child: Center(
              child: Text("Exemplos de modais"),
            ),
          ),
        ),
        Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            title: const Text("exemplo 01"),
            centerTitle: true,
          ),
          drawer: DrawerWidget(_pageController),
          body: Exemplo1Page(_scaffoldKey),
        )
      ],
    );
  }
}
