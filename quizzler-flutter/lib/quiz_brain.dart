import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question(
        text: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Question(
        text: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Question(text: 'A slug\'s blood is green.', answer: true)
  ];

  QuizBrain() {
    _questions.shuffle();
  }

  List<Question> get questions {
    return this._questions;
  }

  bool checkAnswer(bool answer) {
    bool isTrue = answer == _questions[_questionNumber].answer ? true : false;

    this.nextQuestion();

    return isTrue;
  }

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return this._questions[_questionNumber].text;
  }

  bool get isFinishGame {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void restartGame() {
    _questionNumber = 0;
  }

  int get questionNumber {
    return _questionNumber;
  }
}
