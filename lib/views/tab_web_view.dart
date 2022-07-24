import 'package:flutter/material.dart';
import 'package:flutter_multi_webview/components/keep_alive_web_page.dart';

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
                KeepAliveWebPage("https://flutter.dev/"),
                KeepAliveWebPage("https://www.nintendo.co.jp/"),
                KeepAliveWebPage("https://www.playstation.com/ja-jp/"),
              ],
            ),
            SafeArea(child: TabPageSelector()),
          ],
        ),
      ),
    );
  }
}
