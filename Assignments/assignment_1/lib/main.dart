import 'package:flutter/material.dart';
import './button.dart';
import './text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  var _textSamples = [
    'Sample text 1',
    'Sample text 2',
    'Sample text 3',
    'Sample text 4',
    'Sample text 5',
  ];

  var _textSampleIndex = 0;

  void _switchText() {
    setState(() {
      _textSampleIndex += 1;

      if (_textSampleIndex >= _textSamples.length){
        setState(() {
         _textSampleIndex = 0; 
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Center(
          child: Column(
            children: [
              SampleText(_textSamples,_textSampleIndex),
              RefreshButton(_switchText)
            ],
          ),
        ),
      ),
    );
  }
}
