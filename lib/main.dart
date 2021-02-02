import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_components/components/ActionSheet.dart';
import 'package:cupertino_components/components/MyAlertDialog.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Components"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
      body:Column(
        children: [
          Row(
            children: [
              Text("Action Sheet :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              ActionSheet(),
            ],
          ),
          Row(
            children: [
              Text("Alert Dialog :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 17,),
              MyAlertDialog(),
            ],
          )
        ],
      )

      ),
    );
  }
}
