import 'package:flutter/material.dart';

class Transport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransportState();
  }
}

class TransportState extends State<Transport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Transport'),
    );
  }
}
