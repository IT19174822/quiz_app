 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app55/answer_button.dart';
import 'package:flutter_app55/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key,required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex =0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;

    });

  }



  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,

      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            Text(currentQuestion.text,
              style: TextStyle(color: Colors.white,fontSize: 24),
            textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30,),
          ...currentQuestion.getShuffledAnswer().map((answer){
            return AnswerButton(text: answer, onTap: ()
            {
              answerQuestion(answer);
            });


    })

          ],
        ),
      ),
    );
  }
}
