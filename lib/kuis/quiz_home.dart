import 'package:flutter/material.dart';
import 'package:listrik_statis/kuis/quiz_view.dart';
import 'package:page_indicator/page_indicator.dart';

class QuizHome extends StatefulWidget {
  QuizHome({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? "Kuis"),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width, child: Carousel()),
    );
  }
}

class Carousel extends StatefulWidget {
  _CarouselState createState() => _CarouselState();
}

void contoh2() {
  var context;
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
              child: Text(
            "Contoh Soal 3",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          content: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, int index) {
                return QuizHome();
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

class _CarouselState extends State<Carousel>
    with SingleTickerProviderStateMixin {
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  void _animateSlider(int length) {
    int nextPage = _controller.page!.round() + 1;

    if (nextPage == length) {
      nextPage = 0;
    }

    _controller.animateToPage(nextPage,
        duration: Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    width:
    MediaQuery.of(context).size.width;

    final List<Widget> _list = [
      SliderBox(
          child: QuizView(
        showCorrect: true,
        tagColor: Colors.black,
        questionTag: "Soal: 1",
        answerColor: Color.fromARGB(255, 20, 20, 20),
        answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 48, 118, 138),
        width: 300,
        height: 600,
        question:
            "Bagian terkecil dari suatu zat yang tidak bisa dibagi-bagi lagi dengan reaksi kimia biasa adalah….",
        rightAnswer: "Atom",
        wrongAnswers: ["Partikel", "Molekul", "Muatan"],
        onRightAnswer: () => print("Right"),
        onWrongAnswer: () => print("Wrong"),
        nexTap: () {
          int nextPage = _controller.page!.round() + 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        backTap: () {
          int nextPage = _controller.page!.round() - 1;

          _controller.animateToPage(nextPage,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
      )),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 1",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Bagian terkecil dari suatu zat yang tidak bisa dibagi-bagi lagi dengan reaksi kimia biasa adalah….",
              rightAnswer: "Atom",
              wrongAnswers: ["Partikel", "Molekul", "Muatan"],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              })),
      SliderBox(
          child: QuizView(
              showCorrect: true,
              tagColor: Colors.black,
              questionTag: "Soal: 1",
              answerColor: Color.fromARGB(255, 20, 20, 20),
              answerBackgroundColor: Color.fromARGB(255, 138, 186, 228),
              questionColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 48, 118, 138),
              width: 300,
              height: 600,
              question:
                  "Bagian terkecil dari suatu zat yang tidak bisa dibagi-bagi lagi dengan reaksi kimia biasa adalah….",
              rightAnswer: "Atom",
              wrongAnswers: ["Partikel", "Molekul", "Muatan"],
              onRightAnswer: () => print("Right"),
              onWrongAnswer: () => print("Wrong"),
              nexTap: () {
                int nextPage = _controller.page!.round() + 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              },
              backTap: () {
                int nextPage = _controller.page!.round() - 1;

                _controller.animateToPage(nextPage,
                    duration: Duration(seconds: 1), curve: Curves.linear);
              })),
    ];

    PageIndicatorContainer container = new PageIndicatorContainer(
      child: PageView(
        children: _list,
        controller: _controller,
      ),
      length: _list.length,
      indicatorSpace: 10,
      indicatorColor: Colors.grey.shade300,
      indicatorSelectorColor: Colors.grey,
    );

    return Stack(
      children: <Widget>[
        Container(color: Colors.grey[100], height: double.infinity),
        Container(
          color: Colors.white,
          child: container,
        ),
      ],
    );
  }
}

class SliderBox extends StatelessWidget {
  final Widget? child;
  final Color? colors;
  const SliderBox({Key? key, this.child, this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }
}
