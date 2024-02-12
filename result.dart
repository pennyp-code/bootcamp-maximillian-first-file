import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore == 3) {
      resultText = 'Black sucks';
    } else if ((resultScore > 3) && (resultScore <= 15)) {
      resultText = 'you are weird';
    } else if ((resultScore > 15) && (resultScore <= 30)) {
      resultText = 'You are Bad';
    } else {
      resultText = 'Mum is the best!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
        child: Text(
          'Restart Quiz!',
        ),
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.blue,
            onSurface: Colors.white,
            primary: Colors.black),

        // or style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue),
        // foregroundColor: MaterialStateProperty.all(Colors.white),)
        onPressed: resetHandler,
      )
    ]));
  }
}
