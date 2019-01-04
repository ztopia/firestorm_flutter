import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://m.koinrocket.id",
      appBar: AppBar(
        title: Text("Widget webview"),
      ),
    );
  }
}
