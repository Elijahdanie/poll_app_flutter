class Poll {
  Poll({this.title, this.description, this.pollquestion, this.previewImage});
  String title;
  String description;
  String previewImage;
  List<PollQuestion> pollquestion;

  int getResponses() {
    int temp = 0;
    pollquestion.forEach((x) => temp += x.responses());
    return temp;
  }
}

//you say question - single or multiple answer??

class PollQuestion {
  PollQuestion(
      {this.question,
      this.imageurl,
      this.videourl,
      this.answers,
      this.id,
      this.multipleoptions});
  int id;
  String question;
  String imageurl;
  String videourl;
  bool multipleoptions;
  List<Answer> answers;

  int responses() {
    int temp = 0;
    answers.forEach((x) => temp += x.responses);
    return temp;
  }
}

class Answer {
  Answer({this.id, this.answer, this.responses});
  int id;
  String answer;
  int responses;
}
