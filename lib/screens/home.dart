// ignore: file_names
import 'package:flutter/material.dart';
import 'package:webapp/screens/homepage.dart';
import 'package:webapp/screens/netflix.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
      title : const Text("App Bar") 
      
      ),
      body: Row(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text("YOUTUBE"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyHomePage()));
              },
              
          
            ) ,
            
          
            
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const NetflixScreen()));
          }, child: const Text("NETFLIX"))
        ],
      ),
    );

  }
}