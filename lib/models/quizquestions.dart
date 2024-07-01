class Quizquestions {
  const Quizquestions(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswers() {
    final shuffledanswers = List.of(answers);
    shuffledanswers.shuffle();
    return shuffledanswers;
  }
}
