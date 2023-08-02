import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
   const StartScreen(this.startQuiz);
  final void Function () startQuiz;


  @override
  Widget build(context) {
    return Center(

        child:  Column(
          mainAxisSize: MainAxisSize.min,

          children: [
          SizedBox(height: 60,),
            Image.asset('assets/images/quiz-logo.png',width: 200,),
            const SizedBox(height: 30,),
            const Text('Flutter Quiz App!',style: TextStyle(
              color: Colors.white,fontSize: 25,
            ),),
            const SizedBox(height: 30,),
            TextButton.icon(onPressed: startQuiz,
              label: const Text('Start Quiz!',style: TextStyle(
              color: Colors.white,fontSize: 23,),
              ),
              icon: const Icon(Icons.play_arrow),
            ),


        ],));
  }
}