import 'package:flutter/material.dart';

import 'package:flutter_refresh/flutter_refresh.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

import './../components/swiper.dart';

class News extends StatefulWidget {
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> with TickerProviderStateMixin {
  Widget _itemBuilder(BuildContext context, int index) {
    return Padding(
        key: Key(index.toString()),
        padding: EdgeInsets.all(10.0),
        child: Text(
          "顺序数据:$index",
          style: TextStyle(fontSize: 14.0),
        ));
  }

  int _itemCount;

  @override
  void initState() {
    _itemCount = 10;
    super.initState();
  }

  Future<Null> onFooterRefresh() {
    return Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _itemCount += 10;
      });
    });
  }

  Future<Null> onHeaderRefresh() {
    // throw Exception("loading");

    return Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _itemCount = 10;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('News'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 120.0,
              color: Colors.blue,
              child: ExampleHorizontal(),
            ),
            Expanded(
              child: SafeArea(
                child: Refresh(
                  // childBuilder:,
                  onFooterRefresh: onFooterRefresh,
                  onHeaderRefresh: onHeaderRefresh,
                  child: ListView.builder(
                    itemBuilder: _itemBuilder,
                    itemCount: _itemCount,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
