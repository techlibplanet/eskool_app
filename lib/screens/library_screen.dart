import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LibraryState();
  }
}

class LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Library'),
    );
  }
}
