class QuizQuestion {
  const QuizQuestion({required this.question, required this.answers});
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
