import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class Contact extends StatefulWidget{
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
      body: Center(
        child: Text('Contact', style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}