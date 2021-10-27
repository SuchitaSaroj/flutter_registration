
import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class QuizApp extends StatefulWidget {


  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /* appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
            children: [
              Text('Dance Competition',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,

                ),

              ),
            ]
        ),
      ),*/
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/image7.jpg"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            title:Row(
                children: [
                  Text('Dance Competition',
                    style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold,),
                  ),
                ]
            ),
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50)),
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              QuizView(
                  image: Container(
                    height: 100,
                    width: 140,
                    child: Image.asset('assets/logo.jpg',fit: BoxFit.fill,),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 1',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Which of the following songs is the national anthem of India?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Jana Gana Mana',
                  wrongAnswers: ['Rangde Basanti Chola','Saare Jahan Se Acha'],
                  onRightAnswer: ()=> print('Right!'),
                  onWrongAnswer: (){
                    Alert(
                      context: context,
                      title: 'Wrong! Try Again',
                    ).show();
                  }
              ),
              SizedBox(height: 10,),
              QuizView(
                  image: Container(
                    height: 100,
                    width: 140,
                    child: Image.asset('assets/boy.jpg',fit: BoxFit.fill,),
                  ),
                  showCorrect: true,
                  questionTag: 'Question 2',
                  questionColor: Colors.black,
                  tagColor: Colors.yellowAccent,
                  backgroundColor: Colors.white70,
                  tagBackgroundColor: Colors.red.shade300,
                  answerColor: Colors.white,
                  answerBackgroundColor: Colors.deepPurple,
                  question: 'Who wrote the famous book India Wins Freedom?',
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  rightAnswer: 'Maulana Abul Kalam Azad',
                  wrongAnswers: ['Jawaharlal Nehru','Bipan Chandra'],
                  onRightAnswer: ()=> print('Right!'),
                  onWrongAnswer: (){
                    Alert(
                      context: context,
                      title: 'Wrong! Try Again',
                    ).show();
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
