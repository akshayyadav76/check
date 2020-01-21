import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //    // _counter++;
  //   });
  // }
  //samw comments
var colorChagen = Colors.blue;
 var widght  = 400.0;
  @override
  Widget build(BuildContext _) {
    return Scaffold(
      appBar: AppBar(title: Text("flutter wideget of week")),
  body: Column(
 
    children: <Widget>[
       AnimatedContainer(
         duration: Duration(seconds: 1),
          height: 100,
          width: widght,
         color: Colors.red, 
        
      ),
      AnimatedContainer(
        
        duration: Duration(seconds: 1),
        height: 200,
        width: double.infinity,
       color: colorChagen, 
      ),
      RaisedButton(
        child: Text("animate"),
        onPressed: (){
          setState(() {
            colorChagen == Colors.blue ? colorChagen = Colors.yellow:colorChagen =Colors.blue;
            widght == 400.0 ? widght = 100:widght = 400.0;

          });
        },
      ),
      
    ],
  ),
    );
  }
  
 

  
}

