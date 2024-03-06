import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NetflixScreen extends StatefulWidget {
   const NetflixScreen({super.key});

  @override
  State<NetflixScreen> createState() => _NetflixScreenState();
  

  
}

class _NetflixScreenState extends State<NetflixScreen> {
late WebViewController controller;
@override
  void initState(){
super.initState();
controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse("https://www.netflix.com/browse"));
  

}
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Netflix"),
        backgroundColor: Colors.blueGrey,
        // automaticallyImplyLeading: false,
// leading: IconButton(
//           onPressed: () => Navigator.pop(context),
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Colors.white,
//           ),
//         ),
// 
        elevation: 0,
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}