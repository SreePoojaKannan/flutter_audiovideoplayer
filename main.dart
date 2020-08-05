
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/audio.dart';
import 'package:myapp/video.dart';
void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
  
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('HEY THERE, FRESHMAN'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body:Container(
  alignment: Alignment.center,
  width: double.infinity,
  height: double.infinity,
  color: Colors.cyan[600],
  margin: EdgeInsets.all(10),
  child:Stack(
    children: <Widget>[
         Container(
           margin: EdgeInsets.only(left:50 ),
           padding: EdgeInsets.only(bottom: 100),
           width: 300,
           height: 300,
           child:  Image.asset('images/bitmoji.jpg'),),
         Container(
          child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[        
           RaisedButton(
           child: Text('Play Music!'),
           onPressed: (){
          
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyAudio()),
         );
        },
           padding: EdgeInsets.only(right: 10),),
           Spacer(),
           RaisedButton(onPressed:(){
          
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MyVideo()),
         );
        },
        child: Text('Play Video!'),
        
        padding: EdgeInsets.only(right: 10),),
      ],
    ),
  ),
    ],
  ),
    ),
    ),
    );
    
  }
}
