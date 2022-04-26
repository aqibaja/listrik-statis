import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listrik_statis/kuis/api_trivia.dart';
import 'package:listrik_statis/kuis/question_pageview.dart';
import 'package:listrik_statis/kuis/shuffleanswers.dart';

import 'dart:math';

//todo change this name
typedef void Randomise(List options);

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);
  List wrongRightList = [];

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final ApiTrivia _apitrivia = ApiTrivia();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text('Trivia questions'),
      ),
      body: _futureWidget(),
    );
  }

  _futureWidget() {
    return FutureBuilder(
      future: _apitrivia.getStates(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List results = snapshot.data as List;
          ShuffleRight(
              result: results,
              Shuffler: (options) {
                widget.wrongRightList = options;
              });

          return QuestionsPageView(
              results: results, wrongRightList: widget.wrongRightList);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
