import 'package:flutter/material.dart';

class Cafeteria extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CafeteriaState();
  }
}

class CafeteriaState extends State<Cafeteria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafeteria'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Cafeteria'),
    );
  }
}
