import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://naver.com');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()..loadRequest(homeUrl)
  ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Naver'),
        centerTitle: true,
        actions: [IconButton(onPressed: () {
          controller.loadRequest(homeUrl);
        }, icon: Icon(Icons.home))],
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
