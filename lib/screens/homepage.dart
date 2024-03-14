import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 


class _MyHomePageState extends State<MyHomePage> {
    bool isLoading = true;
    

final controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(Uri.parse("https://www.youtube.com/"));

@override
//  void initState(){
//    super.initState();
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        // forceMaterialTransparency: true,
        // scrolledUnderElevation: 1,
      //  toolbarOpacity: 3,
        backgroundColor: Colors.deepPurple,

        title: const Text("Youtube Web"),
        
      ),
      body: WebViewWidget(
      
        controller: controller
      
        
        ),
    );
  }
}
