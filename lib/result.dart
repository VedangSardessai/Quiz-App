import 'package:first_app/resultTextStyle.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  Text get resultStr {
    if (totalScore < 200)
      return Text(
        'You lose',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Colors.redAccent[700],
          fontWeight: FontWeight.bold,
        ),
      );

    if (totalScore == 200)
      return Text(
        'You pass',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          color: Colors.yellow[800],
          fontWeight: FontWeight.bold,
        ),
      );

    if (totalScore == 300)
      return Text(
        'You are KAIZOKU NI NARU\n',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 26,
          color: Colors.green[800],
          fontWeight: FontWeight.bold,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 40, top: 300, bottom: 200, right: 30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Row(children: [resultStr]),
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 4,
                                      color: Colors.green[500],
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(80))),
                                child: Text(
                                  'Your Score = ' +
                                      totalScore.toString() +
                                      ' / 300   ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.green[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 30, right: 0, bottom: 0),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue[700],
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                elevation: 20,
                              ),
                              onPressed: resetQuiz,
                              child: Text('Reset the quiz?',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ))),
                        )
                      ],
                    ))
              ],
            )
          ],
        ));
  }
}
