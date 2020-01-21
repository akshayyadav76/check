import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());
////
///////
////
////
////
////
////
///
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

 Future futureResult()async{
    var respontGet = await http.get( 'https://jsonplaceholder.typicode.com/posts');
       var jsondta= json.decode(respontGet.body);
    print("see is it working ");  
       print(respontGet.body);
    return jsondta;
   
  }
  //var widght  = 400.0;
  @override
  Widget build(BuildContext _) {
    return Scaffold(
      appBar: AppBar(title: Text("flutter wideget of week")),
      body: Column(
        children: <Widget>[
          Expanded(
                      child: FutureBuilder (
              future:  futureResult(),
              builder: (context, datasnapshot) {
                if (datasnapshot.connectionState == ConnectionState.done) {
                 // var getit = datasnapshot.data;
                 print(datasnapshot.data);
                  return ListView.builder(
                      itemCount: datasnapshot.data.length,
                      itemBuilder: (context,i){
                        return  AnimatedContainer(
                    duration: Duration(seconds: 3),
                    height: 60,
                    width: double.infinity,
                    color: colorChagen,
                    child: Text(datasnapshot.data[i]['title']),
                  );
                      },
                      );
                  
                  
                  
                  
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          RaisedButton(
            child: Text("animate"),
            onPressed: () {
              setState(() {
                colorChagen == Colors.blue
                    ? colorChagen = Colors.yellow
                    : colorChagen = Colors.blue;
                // widght == 400.0 ? widght = 100:widght = 400.0;
              });
            },
          ),
        ],
      ),
    );
  }
}
