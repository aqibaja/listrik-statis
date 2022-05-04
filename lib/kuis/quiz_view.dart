library quiz_view;

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'dart:math';

import 'package:listrik_statis/main.dart';

class QuizView extends StatefulWidget {
  /// Boolean to show the correct answer after the quiz is answered
  final bool showCorrect;

  /// The question
  final String question;

  /// The questonTag (question number or id)
  final String? questionTag;

  /// Color of question font
  final Color questionColor;

  /// Background color
  final Color backgroundColor;

  /// Image if any
  final Widget? image;

  /// Width of the quiz view
  final double width;

  /// Height of the quiz view
  final double height;

  /// The right answer
  final String rightAnswer;

  /// The wrong answers
  final List<String> wrongAnswers;

  /// Question Tag background color
  final Color tagBackgroundColor;

  /// Question Tag font color
  final Color tagColor;

  /// Answer font color
  final Color answerColor;

  /// Answer background color
  final Color answerBackgroundColor;

  /// This function is executed if the answer is right
  final void Function() onRightAnswer;

  /// This function is executed if the answer is wrong
  final void Function() onWrongAnswer;

  final void Function() nexTap;

  final void Function() backTap;

  final String dataJawaban;
  final bool? jawabanImage;

  QuizView(
      {this.showCorrect = true,
      this.questionTag,
      required this.question,
      this.questionColor = Colors.black,
      this.backgroundColor = Colors.white,
      this.image,
      required this.height,
      required this.width,
      required this.rightAnswer,
      required this.wrongAnswers,
      this.tagColor = Colors.black,
      this.tagBackgroundColor = Colors.white,
      this.answerColor = Colors.black,
      this.answerBackgroundColor = Colors.white,
      required this.onRightAnswer,
      required this.onWrongAnswer,
      required this.backTap,
      required this.nexTap,
      required this.dataJawaban, this.jawabanImage});

  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  _QuizViewState();

  void contoh(String data, {bool? jawabanImage}) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title:  Container(
                      child: jawabanImage == true? Image.asset(data, fit: BoxFit.fill,):  Html(
                    data: data,
                    tagsList: Html.tags..addAll(["bird", "flutter"]),
                    style: {
                      "body": Style(padding: EdgeInsets.all(10)),
                      "tr": Style(
                        border: Border(bottom: BorderSide(color: Colors.grey)),
                      ),
                      "th": Style(
                        backgroundColor: Colors.grey,
                      ),
                      "td": Style(
                        alignment: Alignment.topLeft,
                      ),
                      'h5': Style(
                        maxLines: 2,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    },
                  )
                
            ),
            actions: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 231, 19, 19),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    "KEMBALI",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          );
        });
  }

  bool isTapped = false;
  static Random _random = new Random();
  late int answerIndex;

  @override
  Widget build(BuildContext context) {
    if (!isTapped) {
      answerIndex = _random.nextInt(widget.wrongAnswers.length + 1);
    }

    Column answerColumn = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [],
    );

    for (String i in widget.wrongAnswers) {
      answerColumn.children.add(
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) =>
                  isTapped ? Colors.red : widget.answerBackgroundColor),
              padding: MaterialStateProperty.resolveWith(
                  (states) => EdgeInsets.fromLTRB(20, 10, 20, 10)),
              shape: MaterialStateProperty.resolveWith(
                  (states) => StadiumBorder()),
              textStyle: MaterialStateProperty.resolveWith(
                  (states) => TextStyle(color: Colors.white)),
            ),
            child: Center(
              child: Text(
                i,
                style: TextStyle(
                    color: widget.answerColor,
                    fontSize: widget.width > widget.height
                        ? widget.width / 25
                        : widget.height / 25),
              ),
            ),
            onPressed: () {
              if (!isTapped) {
                widget.onWrongAnswer();
                if (widget.showCorrect) {
                  setState(() {
                    isTapped = !isTapped;
                  });
                }
              }
            },
          ),
        ),
      );
    }
    answerColumn.children.insert(
        answerIndex,
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(15),
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) =>
                  isTapped ? Colors.green : widget.answerBackgroundColor),
              padding: MaterialStateProperty.resolveWith(
                  (states) => EdgeInsets.fromLTRB(20, 10, 20, 10)),
              shape: MaterialStateProperty.resolveWith(
                  (states) => StadiumBorder()),
              textStyle: MaterialStateProperty.resolveWith(
                  (states) => TextStyle(color: Colors.white)),
            ),
            child: Center(
              child: Text(
                widget.rightAnswer,
                style: TextStyle(
                    color: widget.answerColor,
                    fontSize: widget.width > widget.height
                        ? widget.width / 25
                        : widget.height / 25),
              ),
            ),
            onPressed: () {
              if (!isTapped) {
                widget.onRightAnswer();
                if (widget.showCorrect) {
                  setState(() {
                    isTapped = !isTapped;
                  });
                }
              }
            },
          ),
        ));

    answerColumn.children.add(
      Padding(
        padding: const EdgeInsets.only(top: 0, left: 50.0, right: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => widget.backTap(),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 59, 162, 222)),
                height: 60,
                width: 100,
                child: Center(
                  child: Text('Kembali',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                ),
              ),
            ),
            InkWell(
              onTap: () => widget.nexTap(),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 59, 222, 102)),
                height: 60,
                width: 100,
                child: Center(
                  child: Text('Selanjutnya',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          border: Border.all(
              color: Colors.black, width: 1.5, style: BorderStyle.solid)),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: widget.questionTag != null
          ? Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    child: Text(
                      widget.questionTag!,
                      style: TextStyle(
                          color: widget.tagColor,
                          fontWeight: FontWeight.bold,
                          fontSize: widget.width > widget.height
                              ? widget.width / 20
                              : widget.height / 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      0,
                      widget.width > widget.height
                          ? widget.width / 10
                          : widget.height / 10,
                      0,
                      0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: widget.image != null
                          ? [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: RichText(
                                    text: TextSpan(
                                  text: widget.question,
                                  style: TextStyle(
                                      color: widget.questionColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: widget.width > widget.height
                                          ? widget.width / 20
                                          : widget.height / 20),
                                )),
                              ),
                              widget.image!,
                              answerColumn,
                              isTapped == true
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30, top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () => contoh(widget.dataJawaban, jawabanImage: widget.jawabanImage),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 199, 232, 32)),
                                height: 60,
                                width: 100,
                                child: Center(
                                  child: Text('Lihat Penjelasan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                              ),
                            ),
                            height: 70,
                            width: 180,
                          ),
                        ),
                      )
                    : Container()
                            ]
                          : [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: RichText(
                                  text: TextSpan(
                                      text: widget.question,
                                      style: TextStyle(
                                          color: widget.questionColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)),
                                ),
                              ),
                              answerColumn,
                              isTapped == true
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30, top: 20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: InkWell(
                              onTap: () => contoh(widget.dataJawaban, jawabanImage: widget.jawabanImage),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(255, 199, 232, 32)),
                                height: 60,
                                width: 100,
                                child: Center(
                                  child: Text('Lihat Penjelasan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                              ),
                            ),
                            height: 70,
                            width: 180,
                          ),
                        ),
                      )
                    : Container()
                            ],
                    ),
                  ),
                ),
                
              ],
            )
          : SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widget.image != null
                    ? [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: RichText(
                              text: TextSpan(
                            text: widget.question,
                            style: TextStyle(
                                color: widget.questionColor,
                                fontWeight: FontWeight.bold,
                                fontSize: widget.width > widget.height
                                    ? widget.width / 20
                                    : widget.height / 20),
                          )),
                        ),
                        widget.image!,
                        answerColumn
                      ]
                    : [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: RichText(
                            text: TextSpan(
                                text: widget.question,
                                style: TextStyle(
                                    color: widget.questionColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: widget.width > widget.height
                                        ? widget.width / 20
                                        : widget.height / 20)),
                          ),
                        ),
                        answerColumn,
                      ],
              ),
            ),
    );
  }
}
