import 'package:flutter/material.dart';
import 'package:flutter_multi_webview/components/keep_alive_web_page.dart';

class IndexedStackWebView extends StatefulWidget {
  const IndexedStackWebView({Key? key}) : super(key: key);

  @override
  State<IndexedStackWebView> createState() => _IndexedStackWebViewState();
}

class _IndexedStackWebViewState extends State<IndexedStackWebView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          KeepAliveWebPage("https://flutter.dev/"),
          KeepAliveWebPage("https://www.nintendo.co.jp/"),
          KeepAliveWebPage("https://www.playstation.com/ja-jp/"),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.one_k), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.two_k), label: '2'),
        BottomNavigationBarItem(icon: Icon(Icons.three_k), label: '3'),
      ],
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
