import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  TableScreen({Key key}) : super(key: key);

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("table view"),),
      body: ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.green, BlendMode.darken),
              child: DataTable(
          
          columns: [
            DataColumn(label: Text("roll number")),
            DataColumn(label: Text("Name")),

            ],
            rows: [
              DataRow(cells: [
                DataCell(
                  Text("2235664")),
                  DataCell(
                  Text("2235664")),
                ]

                )
            ],
            
               
                
            
        ),
      )
    );
  }
}