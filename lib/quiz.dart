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
              questionsAnswers[currentQuestion]['questions'],
            ),
            ...(questionsAnswers[currentQuestion]['answers']
                    //Here spread operator is used to take the individual items of a list and store it in another list
                    as List<Map<String, Object>>)
                .map((answer) {
              return OptionButtons(
                  () => optionChosen(answer['score']), answer['text']);
            }).toList(),
          ], 
        ),
      ],
    );
  }
}
