import 'package:flutter/material.dart';

import 'package:flutter_custom_bottom_tab_bar/tabbar.dart';
import 'package:flutter_custom_bottom_tab_bar/eachtab.dart';
import './home.dart';
import './../views/news_page.dart';
import './../views/game_page.dart';

class Entry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EntryState();
  }
}

class EntryState extends State<Entry> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int _selectedIndex = 0;
  var titles = ['Home', 'News', 'Game','Market', 'Trade'];
  var icons = [
    Icons.home,
    Icons.play_arrow,
    Icons.child_friendly,
    Icons.fiber_new,
    Icons.mic_none
  ];
  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, initialIndex: 0, length: titles.length);
    _tabController.addListener(() {
      setState(() => _selectedIndex = _tabController.index);
      // print("liucheng-> ${_tabController.indexIsChanging}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 46,
        color: Color.fromRGBO(37, 48, 60, 1.0),
        child: Column(
          children: <Widget>[
            Divider(
              height: 2,
            ),
            TabBar(
              isScrollable: false,
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor:  Theme.of(context).primaryColorDark,
              labelPadding: EdgeInsets.all(0),
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                EachTab(
                    width: 70,
                    // badgeNo: '1',
                    // badgeColor: Theme.of(context).primaryColorDark,
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 0
                        ? Image.asset(
                            'images/home.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/bottom_bar_home.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[0],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 13.0)),
                EachTab(
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 1
                        ? Image.asset(
                            'images/news.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/bottom_bar_news.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[1],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 13.0)),
                EachTab(
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 2
                        ? Image.asset(
                            'images/game.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/bottom_bar_game.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[2],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 13.0)),
                EachTab(
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 3
                        ? Image.asset(
                            'images/market.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/bottom_bar_market.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[3],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 13.0)),
                EachTab(
                    height: 40,
                    padding: EdgeInsets.all(0),
                    icon: _selectedIndex == 4
                        ? Image.asset(
                            'images/trade.png',
                            width: 20,
                            height: 20,
                          )
                        : Image.asset(
                            'images/bottom_bar_trade.png',
                            width: 20,
                            height: 20,
                          ),
                    text: titles[4],
                    iconPadding: EdgeInsets.fromLTRB(0, 0, 0, 2),
                    textStyle: TextStyle(fontSize: 13.0)),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(), //设置滑动的效果，这个禁用滑动
        controller: _tabController,
        children: <Widget>[
          Home(),
          News(),
          Game(),
         
          Text(titles[3]),
          Text(titles[4]),
        ],
      ),
    );
  }
}
