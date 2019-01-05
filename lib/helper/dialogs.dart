import 'package:flutter/material.dart';

class Dialogs {
  showSimpleDialog(BuildContext context, String title, String description) {
    return showDialog(
        context: context,
        barrierDismissible: false, // true if want to click outside the dialog
        builder: (BuildContext context) {
          return Theme(
            data: ThemeData(dialogBackgroundColor: Colors.white),                                     // To set background color
            child: AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),   // To set round corner
              title: Text(
                title,
                style: TextStyle(color: Colors.black87),                                               // To set text Color
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text(
                      description,
                      style: TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Ok',
                    /*style: TextStyle(color: Colors.white),*/                                        // To set text Color
                  ),
                ),
              ],
            ),
          );
        });
  }
}
