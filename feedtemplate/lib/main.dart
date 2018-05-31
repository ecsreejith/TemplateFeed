import 'package:flutter/material.dart';
import 'Utilities/strings.dart';
import 'Views/login.dart';

void main() => runApp( FeedApp());

class FeedApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(primaryColor: Colors.green.shade800),
      home:  LoginPage()
      
      
      
      // Scaffold(
      //   appBar:  AppBar(
      //     title:  Text(Strings.appTitle),
      //   ),
      //   body:  Center(
      //     child:  Text(Strings.appTitle,
      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green.shade800, fontSize: 40.00)
      //     ),
      //   ),
      // )
      
    );
    
  }

  
}

