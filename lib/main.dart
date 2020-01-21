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

  void _incrementCounter() {
    setState(() {
     // _counter++;
    });
  }
  //samw comments

  @override
  Widget build(BuildContext _) {
    return Material(
     
      child:   Stack(
              children: <Widget>[
    ClipPath(
  
                 
  
                              child: Container(
  
                    width: 300,
  
                    height: 300,
  
                    color: Colors.yellow,
  
                  ),
  
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Positioned(
                  
              width: 80,height: 80,
                  bottom:  2,right: 2,
                  child: ClipOval(
                                      child: Container(
                      width: 10,
                      height: 10,
                      color: Colors.deepOrange,),
                  ),
                ),
              
],
      ),
         
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  
 

  
}

