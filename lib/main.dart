import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  var currentQuestion = 0;
  var currentOption = 0;

  void optionChosen() {
    setState(() {
      if (currentOption < 1 && currentQuestion < 1) {
        print(currentOption);
        print(currentQuestion);

        currentQuestion++;
        currentOption++;
      }
    });
  }

  Widget build(BuildContext context) {
    var answerResults = [
      'Correct Answer...You will become Kaizoku ni Naru',
      'Incorrect Answer you fool you fool',
    ];
    var questionsOfQuiz = [
      'Which is the best Anime??',
      'Who is the best Main Character??',
    ];

    var optionsA = ['One Piece', 'Luffy'];
    var optionsB = ['Naruto', 'Naruto'];
    var optionsC = ['Bleach', 'Ichigo'];

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
                    Text(questionsOfQuiz.elementAt(currentQuestion) + '\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
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
                              optionChosen(),
                              print(answerResults[0]),
                              Fluttertoast.showToast(
                                  msg: answerResults[0],
                                  backgroundColor: Colors.white,
                                  timeInSecForIosWeb: 3,
                                  fontSize: 25,
                                  gravity: ToastGravity.TOP,
                                  textColor: Colors.green)
                            },
                        child: Text(
                          optionsA[currentOption],
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
                        print(answerResults[1]),
                        Fluttertoast.showToast(
                            msg: answerResults[1],
                            backgroundColor: Colors.white,
                            timeInSecForIosWeb: 3,
                            fontSize: 25,
                            gravity: ToastGravity.TOP,
                            textColor: Colors.red)
                      },
                      child: Text(
                        optionsB[currentOption],
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
                        print(answerResults[1]),
                        Fluttertoast.showToast(
                            msg: answerResults[1],
                            backgroundColor: Colors.white,
                            timeInSecForIosWeb: 3,
                            fontSize: 25,
                            gravity: ToastGravity.TOP,
                            textColor: Colors.red)
                      },
                      child: Text(
                        optionsC[currentOption],
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
