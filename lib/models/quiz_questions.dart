class Questions {
  const Questions( this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffleList(){
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}