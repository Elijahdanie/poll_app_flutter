import 'package:flutter/material.dart';
import 'package:flutter_application_1/customwidgets/PollPreview.dart';
import 'package:flutter_application_1/data/Poll.dart';
import 'package:flutter_application_1/data/pollUseCase.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Poll> polls;

  @override
  void initState() {
    super.initState();
    print("this prints");
    polls = PollTestCase().getTestCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.trending_down),
            SizedBox(
              width: 10,
            ),
            Text(
              "Statistics App",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
        centerTitle: false,
        backgroundColor: Colors.blue[600],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: polls.map((value) => PollPreview(poll: value)).toList(),
        ),
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/pollform',
                arguments: 'Hello there from the first page guys');
          },
          child: Icon(Icons.add)),
    );
  }
}
