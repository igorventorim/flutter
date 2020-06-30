class Story {
  String _storyTitle;
  String _choice1;
  String _choice2;

  Story(this._storyTitle, this._choice1, this._choice2);

  String get storyTitle {
    return this._storyTitle;
  }

  String get choice1 {
    return this._choice1;
  }

  String get choice2 {
    return this._choice2;
  }
}
