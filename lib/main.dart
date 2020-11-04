import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  String wordPair = WordPair.random().asPascalCase;

  void _incrementCounter() {
    setState(() {
      wordPair = WordPair.random().asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Random words App'), centerTitle: true),
      body: Center(
        child: Text(
          wordPair,
          style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
