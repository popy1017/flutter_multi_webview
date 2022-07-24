import 'package:flutter/material.dart';
import 'package:flutter_multi_webview/components/web_page.dart';

class TabWebView extends StatelessWidget {
  const TabWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: const [
            TabBarView(
              children: [
                KeepAliveWebView("https://flutter.dev/"),
                KeepAliveWebView("https://www.nintendo.co.jp/"),
                KeepAliveWebView("https://www.playstation.com/ja-jp/"),
              ],
            ),
            SafeArea(child: TabPageSelector()),
          ],
        ),
      ),
    );
  }
}
