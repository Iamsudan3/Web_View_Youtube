import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 


class _MyHomePageState extends State<MyHomePage> {

final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse("https://www.youtube.com/"));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        forceMaterialTransparency: true,
      //  toolbarOpacity: 3,
        backgroundColor: Colors.deepPurple,

        title: const Text("Youtube-Web"),
        
      ),
      body: WebViewWidget(
        controller: controller),
    );
  }
}
