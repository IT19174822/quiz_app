import 'package:flutter/material.dart';
import 'package:flutter_app55/questions_screen.dart';
import 'package:flutter_app55/start_screen.dart';
import 'package:flutter_app55/data/questions.dart';
import 'package:flutter_app55/results_screen.dart';


class Quiz extends StatefulWidget {
const Quiz({Key? key});
@override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  List<String> selectedAnswers=[];
  var activeScreen ='start-screen';

  void switchScreen(){
    setState(() {
      activeScreen= 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length == questions.length){
    setState(() {
      activeScreen = 'results-screen';
    });
    }

  }
  void reStartQuiz(){
    setState(() {
      selectedAnswers=[];
      activeScreen='quesions-screen';
    });
  }

   @override
  Widget build(context){

    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen=='questions-screen'){
      screenWidget= QuestionsScreen(
          onSelectAnswer:chooseAnswer
      );
    }

    if(activeScreen =='results-screen'){
      screenWidget=  ResultsScreen(chosenAnswers: selectedAnswers,
      onRestart: reStartQuiz,
      );
      print(questions.length);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 4, 0, 9),
                  Color.fromARGB(255, 40, 2, 66)
                ],
                begin: Alignment.topLeft,



              )
          ),
          child: screenWidget,
        ),

      ),

    );
  }
}