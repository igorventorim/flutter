class Question {
  String _text;

  bool _answer;

  bool get answer {
    return this._answer;
  }

  String get text {
    return _text;
  }

  Question({String text, bool answer}) {
    this._text = text;
    this._answer = answer;
  }
}
