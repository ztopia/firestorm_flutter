import 'package:flutter/material.dart';
import './draw.dart';
import './bottom_navigation_bar.dart';
import './news_list.dart';
import './swiper.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(15, 27, 41, 1.0),
      appBar: AppBar(
        title: Image.asset('images/logo.png'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed!'),
          )
        ],
        elevation: 0.0,
      ),
      drawer: DrawerDemo(),
      // bottomNavigationBar: BottomNavigationBarDemo(),
      // bottomNavigationBar: Entry(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 120.0,
              color: Colors.blue,
              child: ExampleHorizontal(),
            ),
            Container(
              height: 30.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(27, 38, 51, 1.0),
                border: Border(
                  bottom: BorderSide(
                    style: BorderStyle.solid,
                    width: 1.0,
                    color: Color.fromRGBO(50, 60, 71, 1.0),
                  ),
                ),
              ),
            ),
            // market
            Container(
              color: Color.fromRGBO(27, 38, 51, 1.0),
              height: 78.0,
            ),

            SizedBox(
              height: 5.0,
            ),
            //gameZone
            Container(
              color: Color.fromRGBO(27, 38, 51, 1.0),
              height: 80.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'images/game_zone_egg.png',
                        ),
                        Text(
                          'Luck Eggs',
                          style: TextStyle(
                            color: Color.fromRGBO(155, 155, 155, 1.0),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {},
                    color: Color.fromRGBO(27, 38, 51, 1.0),
                    elevation: 0.0,
                    highlightColor: Color.fromRGBO(27, 38, 51, 1.0),
                  ),
                  RaisedButton(
                    child: Row(
                      children: <Widget>[
                        Image.asset('images/game_zone_fortune.png'),
                        Text(
                          'Fortune Teller',
                          style: TextStyle(
                            color: Color.fromRGBO(155, 155, 155, 1.0),
                          ),
                        )
                      ],
                    ),
                    onPressed: () {},
                    color: Color.fromRGBO(27, 38, 51, 1.0),
                    elevation: 0.0,
                    highlightColor: Color.fromRGBO(27, 38, 51, 1.0),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            //invite
            Container(
              height: 80.0,
              child: Image.asset(
                'images/home_invitate.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            //news
            Container(
              color: Color.fromRGBO(27, 38, 51, 1.0),
              height: 500.0,
              child: Column(
                children: <Widget>[
                  //news title
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'News',
                          style: TextStyle(color: Colors.white),
                        ),
                        RaisedButton(
                          child: Row(
                            children: <Widget>[
                              Text(
                                'more',
                                style: TextStyle(
                                  color: Color.fromRGBO(155, 155, 155, 1.0),
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Color.fromRGBO(155, 155, 155, 1.0),
                              )
                            ],
                          ),
                          onPressed: () {},
                          color: Color.fromRGBO(27, 38, 51, 0.1),
                          elevation: 0.0,
                          highlightColor: Color.fromRGBO(27, 38, 51, 0.1),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
