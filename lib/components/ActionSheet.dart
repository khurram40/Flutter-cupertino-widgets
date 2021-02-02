import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionSheet extends StatefulWidget {
  @override
  _ActionSheetState createState() => _ActionSheetState();
}

class _ActionSheetState extends State<ActionSheet> {
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      child: Text("Click me"),
      onPressed: () {
        final act = CupertinoActionSheet(
          title: Text("Food Choices"),
          message: Text("What would you like to eat"),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text("Pizza"),
              onPressed: () {
                print("You have selected Pizza");
                Navigator.pop(context);
              },
            ),
            CupertinoActionSheetAction(
              child: Text("Cookie Dough"),
              onPressed: () {
                print("You have selected cookie dough");
                Navigator.pop(context);

              },
            )
          ],
          cancelButton: CupertinoActionSheetAction(
            child: Text("Cancel"),
            onPressed: () {
              print("You pressed cancel");
              Navigator.pop(context);
            },
          ),
        );

        showCupertinoModalPopup(
            context: context,
            builder: (BuildContext context) => act
        );
      },
    );
  }
}
