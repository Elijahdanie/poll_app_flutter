import 'package:flutter_application_1/data/Poll.dart';

class PollTestCase {
  List<Poll> getTestCase() {
    List<Poll> polls = [
      Poll(
        description:
            "This is a poll preview, just testing to how this works out" +
                " on a variety of many other approaches and understanding yeah!!",
        title: "Infrastructure in Bonny",
        pollquestion: [
          getOptions(1),
          getOptions(2),
          getOptions(3),
        ],
      ),
      Poll(
        description:
            "This is a poll preview, just testing to how this works out" +
                " on a variety of many other approaches and understanding yeah!!",
        title: "Excavation in Civil Engineering",
        pollquestion: [
          getOptions(1),
          getOptions(2),
          getOptions(3),
        ],
      ),
    ];
    return polls;
  }

  PollQuestion getOptions(int id) {
    return PollQuestion(
        id: id,
        question: "Are you a drug addict?",
        imageurl:
            'https://images.unsplash.com/photo-1593642532400-2682810df593?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
        answers: [
          Answer(id: 1, answer: "No", responses: 10),
          Answer(id: 2, answer: "Yes", responses: 5),
          Answer(id: 3, answer: "I use to be", responses: 100),
        ]);
  }
}
