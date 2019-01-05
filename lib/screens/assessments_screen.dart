import 'package:flutter/material.dart';

class Assessments extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AssessmentState();
  }
}

class AssessmentState extends State<Assessments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assessments'),
      ),
      body: getBody(),
    );
  }

  getBody() {
    return Center(
      child: Text('Assessments'),
    );
  }
}
