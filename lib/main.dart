import 'package:first_app/optionButtons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './question.dart';
import './optionButtons.dart';

void main() => runApp(MyApp());
//This is shorthand only to be used when there's a single statement

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

  void _optionChosen() {
    setState(() {
      if (_currentOption < 2 && _currentQuestion < 2) {
        print(_currentOption);
        print(_currentQuestion);

        _currentQuestion++;
        _currentOption++;
      }
    });
  }

  Widget build(BuildContext context) {
    var _answerResults = [
      'Correct Answer...You will become Kaizoku ni Naru',
      'Incorrect Answer you fool you fool',
    ];

    var questionsAnswers = [
      {
        'questions': 'Which is the best Anime ?',
        'answers': [
          'One Piece',
          'Naruto',
          'Bleach',
        ]
      },
      {
        'questions': 'Who is the best MC ?',
        'answers': [
          'Luffy'
              'Naruto',
          'Ichigo',
        ]
      },
      {
        'questions': 'Which is the best Anime?',
        'answers': [
          'Luffy & Zoro'
              'Naruto & Sasuke',
          'Ichigo & Kuchiki',
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
                  borderRadius: BorderRadius.circular(20)),
            ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Question(
                      // '\n\n' +
                      questionsAnswers[_currentQuestion]['questions'],
                      // '\n',
                    ),
                    ...(questionsAnswers[_currentQuestion]['answers']
                            //Here spread operator is used to take the individual items of a list and store it in another list
                            as List<String>)
                        .map((answer) {
                      return OptionButtons(_optionChosen, answer);
                    }).toList()
                  ],
                ),
              ],
            )));
  }
}
