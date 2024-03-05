import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NetflixScreen extends StatefulWidget {
   const NetflixScreen({super.key});

  @override
  State<NetflixScreen> createState() => _NetflixScreenState();

  
}

class _NetflixScreenState extends State<NetflixScreen> {


  final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse("https://www.netflix.com"));

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}