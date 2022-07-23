import 'package:flutter/material.dart';

import '../components/web_page.dart';

class PageWebView extends StatefulWidget {
  const PageWebView({Key? key}) : super(key: key);

  @override
  State<PageWebView> createState() => _PageWebViewState();
}

class _PageWebViewState extends State<PageWebView> {
  final _controller = PageController();

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page: $_currentPageIndex'),
      ),
      body: PageView(
        controller: _controller,
        children: const [
          KeepAliveWebView("https://flutter.dev/"),
          KeepAliveWebView("https://www.nintendo.co.jp/"),
          KeepAliveWebView("https://www.playstation.com/ja-jp/"),
        ],
        onPageChanged: (int pageIndex) {
          setState(() {
            _currentPageIndex = pageIndex;
          });
        },
      ),
    );
  }
}
