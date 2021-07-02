import 'package:flutter/material.dart';

class PollformDisplay extends StatelessWidget {
  PollformDisplay({this.data});
  final String data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Text(data),
          ),
        ),
      ),
    );
  }
}
