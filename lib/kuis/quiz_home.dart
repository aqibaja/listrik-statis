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
        title: Text(widget.title??"Quiz Test"),
      ),
      body: Carousel(),
    );
  }
}



class Carousel extends StatefulWidget {
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> with SingleTickerProviderStateMixin {
  final PageController _controller = PageController();

  List<Widget> _list = [
    SliderBox(
        child: QuizView(
        image: Container(
          width: 150,
          height: 150,
          child: Image.network(
              "https://yt3.ggpht.com/a/AATXAJyPMywRmD62sfK-1CXjwF0YkvrvnmaaHzs4uw=s900-c-k-c0xffffffff-no-rj-mo"),
        ),
        showCorrect: true,
        tagBackgroundColor: Colors.deepOrange,
        tagColor: Colors.black,
        questionTag: "Question: 1",
        answerColor: Colors.white,
        answerBackgroundColor: Color.fromARGB(255, 255, 0, 111),
        questionColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 111, 0, 255),
        width: 200,
        height: 600,
        question: "Which is the best framework for app development?",
        rightAnswer: "Flutter",
        wrongAnswers: ["Fluttor", "Flitter"],
        onRightAnswer: () => print("Right"),
        onWrongAnswer: () => print("Wrong"),
      )),
    SliderBox(
        child:Container(color: Colors.blueGrey,)),
    SliderBox(
        child: Container(color: Colors.green,))
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _animateSlider());
  }

  void _animateSlider() {
    Future.delayed(Duration(seconds: 2)).then((_) {
      int nextPage = _controller.page!.round() + 1;

      if (nextPage == _list.length) {
        nextPage = 0;
      }

      _controller
          .animateToPage(nextPage, duration: Duration(seconds: 1), curve: Curves.linear)
          .then((_) => _animateSlider());
    });
  }

  @override
  Widget build(BuildContext context) {
    PageIndicatorContainer container = new PageIndicatorContainer(
      child:  PageView(
        children: _list,
        controller: _controller,
      ),
      length: _list.length,
      padding: EdgeInsets.fromLTRB(10, 40, 10, 10),
      indicatorSpace: 10,
      indicatorColor: Colors.grey.shade300,
      indicatorSelectorColor: Colors.grey,
    );

    return Stack(
      children: <Widget>[
        Container(color: Colors.grey[100], height: double.infinity),
        Container(color: Colors.white, child: container, margin: EdgeInsets.only(bottom: 50)),
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
    return Container(padding: EdgeInsets.all(10), child: child);
  }
}