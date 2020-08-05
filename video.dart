import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutube/flutube.dart';

class MyVideo extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyVideo> {
  final List<String> playlist = <String>[
    'https://www.youtube.com/watch?v=dXJHDhKJ9Dw',
  ];
  int currentPos;
  String stateText;

  @override
  void initState() {
    currentPos = 0;
    stateText = "Play video now!";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(
        title: Text('Youtube video '),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FluTube.playlist(
              playlist,
              autoInitialize: true,
              aspectRatio: 16 / 9,
              allowMuting: false,
              looping: true,
              deviceOrientationAfterFullscreen: [
                DeviceOrientation.portraitUp,
                DeviceOrientation.landscapeLeft,
                DeviceOrientation.landscapeRight,
              ],
              systemOverlaysAfterFullscreen: SystemUiOverlay.values,
            ),
            
            Text(stateText),
          ],
        ),
      ),),
    );
  }
}
