import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/Poll.dart';

class PollPreview extends StatelessWidget {
  final Poll poll;

  PollPreview({this.poll});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: MaterialButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(Icons.bar_chart),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    poll.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Image.network(poll.previewImage == null ? '' : poll.previewImage),
              Text(poll.description),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Responses : ${poll.getResponses()}"),
                  SizedBox(width: 20),
                  Text("Questions : ${poll.pollquestion.length}")
                ],
              )
            ],
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed('/viewpoll', arguments: poll);
        },
      ),
    );
  }
}
