import 'question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question(
        questionText: 'Some cats are actually allergic to humans',
        questionAnswer: true),
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was "Moon".',
        questionAnswer: true),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        questionText: 'Google was originally called "Backrub".',
        questionAnswer: true),
    Question(
        questionText: 'Chocolate affects a dog\'s heart and nervous system.',
        questionAnswer: true),
    Question(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are entitled to a state funeral.',
        questionAnswer: true),
  ];

  int _questionNumber = 0;

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
