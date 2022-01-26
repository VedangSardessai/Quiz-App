import 'package:flutter/material.dart';
import './Question.dart';
import './OptionButtons.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsAnswers;
  final Function optionChosen;
  final int currentQuestion;

  Quiz(this.questionsAnswers, this.currentQuestion, this.optionChosen);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        Column(
          children: [
            Question(
              // '\n\n' +
              questionsAnswers[currentQuestion]['questions'],
              // '\n',
            ),
            ...(questionsAnswers[currentQuestion]['answers']
                    //Here spread operator is used to take the individual items of a list and store it in another list
                    as List<String>)
                .map((answer) {
              return OptionButtons(optionChosen, answer);
            }).toList(),
          ],
        ),
      ],
    );
  }
}
