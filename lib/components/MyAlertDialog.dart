import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAlertDialog extends StatefulWidget {
  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      child: Text("Click Me"),
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) => CupertinoAlertDialog(
              title: Text("Alert"),
              content: Text("Phone is too hot"),
              actions: <Widget>[
                CupertinoDialogAction(
                  isDefaultAction: true,
                  child: Text("Bye"),
                  onPressed: () {
                    print("Bye");
                    Navigator.of(context).pop();
                  },
                )
              ],
            )
        );
      },
    );
  }
}
