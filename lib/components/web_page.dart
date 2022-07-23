import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class KeepAliveWebView extends StatefulWidget {
  const KeepAliveWebView(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  State<KeepAliveWebView> createState() => _KeepAliveWebViewState();
}

class _KeepAliveWebViewState extends State<KeepAliveWebView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return InAppWebView(
      initialUrlRequest: URLRequest(url: Uri.parse(widget.url)),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
