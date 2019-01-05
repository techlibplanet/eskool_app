import 'package:flutter/material.dart';

class Worksheets extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WorksheetState();
  }
}

class WorksheetState extends State<Worksheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worksheets'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Worksheets'),
    );
  }
}
