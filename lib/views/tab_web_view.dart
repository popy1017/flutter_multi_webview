import 'package:flutter/material.dart';
import 'package:flutter_multi_webview/components/web_page.dart';

class TabWebView extends StatelessWidget {
  const TabWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: const TabBarView(
          children: [
            KeepAliveWebView("https://flutter.dev/"),
            KeepAliveWebView("https://www.nintendo.co.jp/"),
            KeepAliveWebView("https://www.playstation.com/ja-jp/"),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      bottom: const TabBar(
        tabs: [
          Tab(icon: Icon(Icons.directions_car)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ],
      ),
    );
  }
}
