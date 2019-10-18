import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //I wass the stateless widget
  void answerQuestion() {
    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favourite color',
      'What\'s your favourite animal?'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jeda Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Text(question.elementAt(0)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
