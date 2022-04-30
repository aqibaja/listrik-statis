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
      required this.nexTap});

  _QuizViewState createState() => _QuizViewState();
}

const htmlData1 = r"""
<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c6{margin-left:21pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify;height:11pt}.c4{padding-top:0pt;padding-bottom:0pt;line-height:1.15;orphans:2;widows:2;text-align:left;height:11pt}.c2{color:#000000;font-weight:400;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Times New Roman";font-style:normal}.c5{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:justify}.c1{color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:16pt;font-family:"Times New Roman";font-style:normal}.c3{margin-left:43pt;padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c0{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c0"><p class="c3"><span class="c1">Pembahasan </span></p><p class="c5"><span class="c2">Atom adalah bagian terkecil dari suatu zat yang tidak bisa dibagi-bagi lagi dengan reaksi kimia biasa.</span></p><p class="c6"><span class="c1"></span></p><p class="c4"><span class="c1"></span></p></body></html>
""";

class _QuizViewState extends State<QuizView> {
  _QuizViewState();

  List<Widget> _pages = [
    Container(
        child: Html(
      data: htmlData1,
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
    ))
  ];

  void contoh2() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Center(
                child: Text(
              "",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            content: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, int index) {
                  return _pages[index];
                },
              ),
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
              backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => widget.answerBackgroundColor),
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
        padding: const EdgeInsets.only(top: 60, left: 50.0, right: 50),
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
                                          fontSize: 20)),
                                ),
                              ),
                              answerColumn,
                            ],
                    ),
                  ),
                ),
                isTapped == true
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0),
                                  ),
                                ),
                                onPressed: () {
                                  contoh2();
                                },
                                child: Center(
                                  child: Text(
                                    "Lihat Penjelasan",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                )),
                            height: 70,
                            width: 180,
                          ),
                        ),
                      )
                    : Container()
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
