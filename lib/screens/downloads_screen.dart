import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class Downloads extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return DownloadState();
  }

}

class DownloadState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Downloads'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text('Downloads', style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}