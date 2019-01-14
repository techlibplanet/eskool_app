import 'package:flutter/material.dart';
import 'drawer_widget.dart';
import 'package:eskool_app/helper/strings.dart';

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContactState();
  }
}

class ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        drawer: DrawerWidget(),
        body: getBody());
  }

  getBody() {
    return Center(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: Colors.deepPurple,
              ),
              title: Text(
                schoolName,
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
            ),
            ListTile(
              title: Text(
                  schoolAddress),
              leading: Icon(null),
            ),
            ListTile(
              title: Text('040-32905679'),
              leading: Icon(
                Icons.phone,
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text('040-65811235'),
              leading: Icon(null),
            ),
            ListTile(
              title: Text('9573607276'),
              leading: Icon(null),
            ),
            ListTile(
              leading: Icon(
                Icons.email,
                color: Colors.deepPurple,
              ),
              title: Text(schoolEmail),
            ),
            ListTile(
              leading: Icon(
                Icons.public,
                color: Colors.deepPurple,
              ),
              title: Text(schoolWebsite),
            )
          ],
        ));
  }
}
