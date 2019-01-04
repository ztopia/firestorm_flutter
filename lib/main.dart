import 'package:flutter/material.dart';

import './components/bottom_navigation_bar.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override //重写StatelessWidget中Widget

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(27, 38, 51, 1.0),
        highlightColor: Color.fromRGBO(255, 255, 255, 0.1),
        splashColor: Colors.grey[100],
        accentColor: Color.fromRGBO(84, 222, 190, 1.0),
        primaryColorDark:Color.fromRGBO(52, 211, 175, 1.0)
      ),
      home: Entry(),
      //initialRoute: '/', //初始显示路由
      // routes: {
      //   '/': (context) => NavigatorDemo(),
      //   '/home': (context) => Home(),
      //   '/about': (context) => Page(title: 'About',),
      //   '/register':(context)=>RegisterDemo(),
      //   '/mdc':(context)=>MaterialComponents(),
      // },
    );
  }
}
