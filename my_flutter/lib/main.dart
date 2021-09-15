import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
 
void main() {
  runApp(MyApp());
}
 
List<CameraDescription> cameras = [];
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
 
void obtainCamera() async {

  availableCameras().then((availableCameras) {
    cameras = availableCameras;
    if (cameras.length > 0) {
      print("found");
    }else{
      print("No camera available");
    }
  }).catchError((err) {
    print('Error: $err.code\nError Message: $err.message');
  });
}
 
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: Center(
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.all(25),
                child: FlatButton(
                  child: Text(
                    'Obtain camera',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.cyan,
                  textColor: Colors.black,
                  onPressed: () => {
                    obtainCamera()
                  },
                ),
              ),
            ]
          )
        )
      ),
    );
  }
}