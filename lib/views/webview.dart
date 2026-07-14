import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsWebView extends StatelessWidget {
  final String url;

  const NewsWebView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()..loadRequest(Uri.parse(url));

    return Scaffold(body: WebViewWidget(controller: controller));
  }
}
