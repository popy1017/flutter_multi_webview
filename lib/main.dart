import 'package:flutter/material.dart';
import 'package:flutter_multi_webview/views/indexed_stack_web_view.dart';
import 'package:flutter_multi_webview/views/normal_page_web_view.dart';
import 'package:flutter_multi_webview/views/page_web_view.dart';
import 'package:flutter_multi_webview/views/tab_web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: const Color.fromARGB(255, 103, 33, 243),
      ),
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('PageView without keepalive'),
            trailing: const Icon(Icons.arrow_forward_outlined),
            onTap: () => _moveTo(context, const NormalPageWebView()),
          ),
          const Divider(indent: 8, endIndent: 8),
          ListTile(
            title: const Text('PageView'),
            trailing: const Icon(Icons.arrow_forward_outlined),
            onTap: () => _moveTo(context, const PageWebView()),
          ),
          ListTile(
            title: const Text('TabView'),
            trailing: const Icon(Icons.arrow_forward_outlined),
            onTap: () => _moveTo(context, const TabWebView()),
          ),
          ListTile(
            title: const Text('IndexedStack'),
            trailing: const Icon(Icons.arrow_forward_outlined),
            onTap: () => _moveTo(context, const IndexedStackWebView()),
          ),
        ],
      ),
    );
  }

  void _moveTo(BuildContext context, Widget widget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => widget,
        fullscreenDialog: true,
      ),
    );
  }
}
