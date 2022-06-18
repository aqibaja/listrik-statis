import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:listrik_statis/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreen(seconds: 3));
  }
}

class SplashScreen extends StatefulWidget {
  final int seconds;

  const SplashScreen({
    required this.seconds,
  });

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: widget.seconds), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.blue, Colors.green])),
      child: Column(
        children: [
          SizedBox(
            height: 250,
          ),
          Center(
            child: Image.asset(
              "assets/image/ikon1.png",
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              'Created By',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            child: Text(
              'Salsabilla Afifah Khansa',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'RobotoMono'),
            ),
          ),
        ],
      ),
    ));
  }
}
