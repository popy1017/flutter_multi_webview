import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NormalPageWebView extends StatefulWidget {
  const NormalPageWebView({Key? key}) : super(key: key);

  @override
  State<NormalPageWebView> createState() => _NormalPageWebViewState();
}

class _NormalPageWebViewState extends State<NormalPageWebView> {
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
        children: [
          InAppWebView(
            initialUrlRequest:
                URLRequest(url: Uri.parse("https://flutter.dev/")),
          ),
          InAppWebView(
            initialUrlRequest:
                URLRequest(url: Uri.parse("https://www.nintendo.co.jp/")),
          ),
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse("https://www.playstation.com/ja-jp/")),
          ),
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
