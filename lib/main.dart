import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';

void main() => runApp(MyApp());
//This is shorthand only to be used when there's a single statement to be used for a single statement only

//The main function is auto executed when  our app is launched.Where we call runApp
//provided to us by flutter  what it does is any widget that is built by us is drawn
//on the screen.And calls the build method in our widget.Context is an object of type
//buildContext._MyApp

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //If you add a method that's already existing in the class then you add this to show that
  //you are deliberately overriding it
  @override
  var _currentQuestion = 0;
  var _currentOption = 0;
  int _totalScore = 0;

  void _optionChosen(int score) {
    setState(() {
      if (_currentQuestion <= 2) {
        _totalScore += score;
        print(_totalScore);
        _currentQuestion++;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _currentOption = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    var _answerResults = [
      'Correct Answer...You will become Kaizoku ni Naru',
      'Incorrect Answer you fool you fool',
    ];
    //
    //We use final when we want to use it during runtime
    //We use const when  we want it during compile time
    //Final should only be used instead of const iff you do not know the value during compile time else use const
    var _questionsAnswers = [
      {
        'questions': 'Which is the best Anime ?',
        'answers': [
          {'text': 'One Piece', 'score': 100},
          {'text': 'Naruto', 'score': 0},
          {'text': 'Bleach', 'score': 0},
        ]
      },
      {
        'questions': 'Who is the best MC ?',
        'answers': [
          {'text': 'Luffy', 'score': 100},
          {'text': 'Naruto', 'score': 0},
          {'text': 'Ichigo', 'score': 0},
        ]
      },
      {
        'questions': 'Which is the best Anime duo?',
        'answers': [
          {'text': 'Luffy & Zoro', 'score': 100},
          {'text': 'Naruto & Sasuke', 'score': 0},
          {'text': 'Ichigo & Kuchiki', 'score': 0},
        ]
      },
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Quiz App",
              ),
              backgroundColor: Colors.orange[700],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
            ),
            body: _currentQuestion <= 2
                ? Quiz(_questionsAnswers, _currentQuestion, _optionChosen)
                : Result(_totalScore, _resetQuiz)));
  }
}
