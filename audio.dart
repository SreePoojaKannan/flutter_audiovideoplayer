import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
class MyAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text("START MUSIC!!!"),

        ),
        body: Container(
          width:double.infinity,
          height:double.infinity,
          color:Colors.redAccent,
          margin: EdgeInsets.all(3),
        child:Row(
          children:<Widget>[
            Container(      
              alignment: Alignment.center,
              width: 250,
              height: 250,
               child: Card(
                  color: Colors.black,
                  margin: EdgeInsets.all(30),
                  child:Image.asset('images/shameless.png'),                   
                  elevation: 300,
                  ),
            ),
            Container(
              width:1,
              height:1,
              child: RaisedButton(
                onPressed: () {
              print('');
              var audio = AudioCache();
              audio.play('Shameless.mp3');
                }
              ),
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 IconButton(icon: Icon(Icons.pause),onPressed:(){print('pause');}),
                 IconButton(icon: Icon(Icons.play_arrow),onPressed:(){print('play');}),               
                 IconButton(icon: Icon(Icons.refresh),onPressed:(){print('rePlay');}),
                 
          ]
        ),
    ]
  ),
        ),
  ),);
  }
}


