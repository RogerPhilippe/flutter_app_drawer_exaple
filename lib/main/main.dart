import 'package:flutter/material.dart';

import '../helpers/Constants.dart';

import 'MainPage.dart';

void main() => runApp(DrawerExampleApp());

class DrawerExampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: new ThemeData(
        primaryColor: appDarkGreyColor
      ),
      home: MainPage()
    );
  }

}