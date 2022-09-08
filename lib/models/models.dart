class Answer {
  final String answer;
  final String description;
  final String shortDescription;
  bool isClicked;
  bool isSeeMore;

  Answer(
    this.answer,
    this.description,
    this.shortDescription,
    this.isClicked,
    this.isSeeMore,
  );
}

class Question {
  final String title;
  final String subtitle;
  final List<Answer> answers;

  Question(this.title, this.subtitle, this.answers);
}
