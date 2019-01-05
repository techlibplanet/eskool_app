import 'package:flutter/material.dart';
import 'drawer_widget.dart';

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
      body: getBody()
    );
  }

  getBody() {
    return Center(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading : Icon(Icons.location_on, color: Colors.deepPurple,),
            title: Text('Reqelford International School - Rampally', style: TextStyle(color: Colors.deepPurple),),
          ),
          ListTile(
            title: Text('Survey No. 417, Rampally (V), Keesara (M),\nR.R. Dist. Hyderabad, 501301'),
            leading: Icon(null),
          ),
          ListTile(
            title: Text('040-32905679'),
            leading: Icon(Icons.phone, color: Colors.deepPurple,),
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
            leading: Icon(Icons.email, color: Colors.deepPurple,),
            title: Text('admissions@reqelford.com'),
          ),
          ListTile(
            leading: Icon(Icons.public, color: Colors.deepPurple,),
            title: Text('www.reqelfordinternationalschool.com'),
          )
        ],
      )
    );
  }
}
