import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  final List<String> texts;
  final int textidx;

  SampleText(
    @required this.texts,
    @required this.textidx,
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      texts[textidx],
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
    );
  }
}
