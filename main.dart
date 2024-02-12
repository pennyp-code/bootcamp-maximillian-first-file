import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
// class MyAppState extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite colour?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'White', 'score': 5},
        {'text': 'Orange', 'score': 6},
        {'text': 'Pink', 'score': 7},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Bee', 'score': 5},
        {'text': 'Crow', 'score': 6},
        {'text': 'Bear', 'score': 7},
      ],
    },
    {
      'questionText': 'who\'s your favorite parent?',
      'answers': [
        {'text': 'Mum', 'score': 1},
        {'text': 'Mum', 'score': 1},
        {'text': 'Mum', 'score': 1},
        {'text': 'Penny', 'score': 100},
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    // _totalScore = _totalScore + score;
    _totalScore += score;
    print('totalScore =');
    print(_totalScore);

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('no more questions');
    }

    //print('Answer choosen');
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = ['Hello'];
    // dummy.add('max');
    // print(dummy);
    // questions = []; // does not work if question is a const

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My first App')),
      body:
          // same as if (_questionIndex < questions.length ? Column() :
          _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),
    )
        // Column(
        //         children: [
        //           // Text(questions.first),
        //           // Text(questions.elementAt(1)),
        //           Question(
        //               questions[_questionIndex]['questionText'] as String),
        //           ...(questions[_questionIndex]['answers'] as List<String>)
        //               .map((answer) {
        //             return Answer(_answerQuestion, answer);
        //           }).toList()
        //         ],
        //       )

        );
  }
}
    // ElevatedButton(
    //     onPressed: () => print('answer 2 choosen'),
    //     child: Text('Answer 2')),
    // ElevatedButton(
    //     onPressed: () {
    //       //....     extra code here
    //       // this is an annonomous function as you cannot call it from anywhere else in the code

    //       print('answer 3 choosen');
    //     },
    //     // if you were to add () to this function then it would run this code, rather than point to the function and give the function details so that the button can get the right information
    //     child: Text('Answer 3')),
    // ],
    // ),
    // ),
    // );
//   }
// }
