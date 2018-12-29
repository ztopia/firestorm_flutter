import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigatorBarDemoState();
  }
}

class _BottomNavigatorBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Color.fromRGBO(52, 211, 175, 1.0),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.grey),
          ),
          backgroundColor: Color.fromRGBO(37, 48, 60, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/bottom_bar_news.png'),
          activeIcon: Image.asset(
            'images/bottom_bar_game.png',
            color: Color.fromRGBO(37, 48, 60, 1.0),
          ),
          title: Text(
            'News',
            style: TextStyle(color: Colors.grey),
          ),
          backgroundColor: Color.fromRGBO(87, 48, 60, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.games),
          title: Text('Game'),
          backgroundColor: Color.fromRGBO(37, 48, 60, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Market'),
          backgroundColor: Color.fromRGBO(37, 48, 60, 1.0),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          title: Text('Trade'),
          backgroundColor: Color.fromRGBO(37, 48, 60, 1.0),
        )
      ],
    );
  }
}
