import 'package:first_app/question.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import './question.dart';

void main() => runApp(MyApp());
//This is shorthand only to be used when there's a single statement

//The main function is auto executed when  our app is launched.Where we call runApp
//provided to us by flutter  what it does is any widget that is built by us is drawn
//on the screen.And calls the build method in our widget.Context is an object of type
//buildContext.MyApp

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  //If you add a method that's already existing in the class then you add this to show that
  //you are deliberately overriding it

  var _currentQuestion = 0;
  var _currentOption = 0;

  void _optionChosen() {
    setState(() {
      if (_currentOption < 1 && _currentQuestion < 1) {
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
    var _questionsOfQuiz = [
      'Which is the best Anime??',
      'Who is the best Main Character??',
    ];

    var _optionsA = ['One Piece', 'Luffy'];
    var _optionsB = ['Naruto', 'Naruto'];
    var _optionsC = ['Bleach', 'Ichigo'];

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
                    Text(
                      'My First app!\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Question(
                      _questionsOfQuiz.elementAt(_currentQuestion) + '\n',
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 10,
                          side: BorderSide(color: Colors.black, width: 1),
                          minimumSize: Size(180, 50),
                        ),
                        onPressed: () => {
                              _optionChosen(),
                              print(_answerResults[0]),
                              Fluttertoast.showToast(
                                  msg: _answerResults[0],
                                  backgroundColor: Colors.white,
                                  timeInSecForIosWeb: 3,
                                  fontSize: 25,
                                  gravity: ToastGravity.TOP,
                                  textColor: Colors.green)
                            },
                        child: Text(
                          _optionsA[_currentOption],
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        )),
                    Text('\n\n'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 15,
                        side: BorderSide(color: Colors.black, width: 1),
                        minimumSize: Size(180, 50),
                      ),
                      onPressed: () => {
                        print(_answerResults[1]),
                        Fluttertoast.showToast(
                            msg: _answerResults[1],
                            backgroundColor: Colors.white,
                            timeInSecForIosWeb: 3,
                            fontSize: 25,
                            gravity: ToastGravity.TOP,
                            textColor: Colors.red)
                      },
                      child: Text(
                        _optionsB[_currentOption],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text('\n\n'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: 15,
                        side: BorderSide(color: Colors.black, width: 1),
                        minimumSize: Size(180, 50),
                      ),
                      onPressed: () => {
                        print(_answerResults[1]),
                        Fluttertoast.showToast(
                            msg: _answerResults[1],
                            backgroundColor: Colors.white,
                            timeInSecForIosWeb: 3,
                            fontSize: 25,
                            gravity: ToastGravity.TOP,
                            textColor: Colors.red)
                      },
                      child: Text(
                        _optionsC[_currentOption],
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}
