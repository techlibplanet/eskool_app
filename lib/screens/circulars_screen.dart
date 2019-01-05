import 'package:flutter/material.dart';

class Circulars extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircularState();
  }
}

class CircularState extends State<Circulars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circulars'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Circulars'),
    );
  }
}
