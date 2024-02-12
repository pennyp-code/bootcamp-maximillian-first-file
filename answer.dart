import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHander;
  final String answerText;

  Answer(this.selectHander, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 2.0),
        width: double.infinity,
        child:

// RaisedButton(color: colors.blue,),
            ElevatedButton(
                onPressed: selectHander,
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.deepPurple,
                  onSurface: Colors.white,
                  primary: Colors.pink,
                  shadowColor: Colors.black,
                  elevation: 6,
                  splashFactory: InkRipple.splashFactory,
                ),

                // ButtonStyle(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                // style: ElevatedButton.styleFrom
                // (

                // backgroundColor: Colors.blue, foregroundColor: Colors.white),

                // colors.color
                // onPressed: _answerQuestion,

                child: Text(
                  answerText,
                  style: TextStyle(fontSize: 40),
                )));

    // );
  }
}
