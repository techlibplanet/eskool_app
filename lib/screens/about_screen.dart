import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text('About App', style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
  
}