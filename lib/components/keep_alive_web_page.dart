import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class KeepAliveWebPage extends StatefulWidget {
  const KeepAliveWebPage(this.url, {Key? key}) : super(key: key);

  final String url;

  @override
  State<KeepAliveWebPage> createState() => _KeepAliveWebPageState();
}

class _KeepAliveWebPageState extends State<KeepAliveWebPage>
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
