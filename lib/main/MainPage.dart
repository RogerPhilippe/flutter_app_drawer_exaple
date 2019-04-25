import 'package:flutter/material.dart';

import '../helpers/Constants.dart';

class MainPage extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildBar(context),
      backgroundColor: appDarkGreyColor,
      body: _buildBody(context),
      drawer: _buildDrawer(context),
      endDrawer: _buildEndDrawer(context),
      resizeToAvoidBottomPadding: false,
    );
  }

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      elevation: 0.1,
      backgroundColor: appDarkGreyColor,
      centerTitle: true,
      title: new Text(appTitle),
      actions: <Widget>[
        new IconButton(
            icon: new Icon(Icons.filter_list),
            tooltip: 'Menu de Filtros',
            onPressed: () {
          _scaffoldKey.currentState.openEndDrawer();
        })
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return new Container();
  }

  Widget _buildDrawer(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
              height: 140.0,
              child: DrawerHeader(
                  child: Text(drawerHeaderLeftTitle),
                  decoration: BoxDecoration(color: Colors.blueAccent))),
          ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  Widget _buildEndDrawer(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
              height: 80.0,
              child: DrawerHeader(
                  child: Text(drawerHeaderRightTitle),
                  decoration: BoxDecoration(color: Colors.blueAccent))),
          ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Item 3'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
