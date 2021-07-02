import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/Poll.dart';

class ViewPoll extends StatelessWidget {
  ViewPoll({this.poll});
  final Poll poll;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
              children: poll.pollquestion
                  .map((options) => PollOptionViewer(
                        option: options,
                      ))
                  .toList()),
        ),
      ),
    );
  }
}

class PollOptionViewer extends StatelessWidget {
  PollOptionViewer({this.option});
  final PollQuestion option;

  Widget showAnswers(Answer answer) {
    return Container(
      child: RaisedButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(Icons.question_answer),
              Text(answer.answer),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text('${option.id}'),
          Text(option.question),
          Column(
            children:
                option.answers.map((answer) => showAnswers(answer)).toList(),
          )
        ],
      ),
    );
  }
}
