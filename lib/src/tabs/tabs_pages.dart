import 'package:flutter/material.dart';

//Tabs
import 'package:prueba1/src/tabs/explore_tab.dart';
import 'package:prueba1/src/tabs/favourite_tab.dart';
import 'package:prueba1/src/tabs/my_order_tab.dart';
import 'package:prueba1/src/tabs/profile_tab.dart';

class TabesPage extends StatefulWidget {
  TabesPage({Key key}) : super(key: key);

  @override
  _TabesPageState createState() => _TabesPageState();
}

class _TabesPageState extends State<TabesPage> {
  List<Widget> _widgetOption = [
    ExploreTab(),
    MyOrderTab(),
    FavouriteTab(),
    ProfileTab(),
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigetionBar(context),
    );
  }

  Widget _bottomNavigetionBar(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Colors.blue,
      currentIndex: _selectedItemIndex,
      onTap: _cambiarWidget,
      showSelectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: new Text('Explorar'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          title: new Text('Mi orden'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: new Text('Favoritos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          title: new Text('Perfil'),
        )
      ],
    );
  }
}
