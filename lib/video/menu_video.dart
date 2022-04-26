import 'package:flutter/material.dart';
import 'package:listrik_statis/video/video1.dart';
import 'package:listrik_statis/video/video2.dart';
import 'package:listrik_statis/video/video3.dart';
import 'package:listrik_statis/video/video4.dart';

class MenuVideo extends StatefulWidget {
  const MenuVideo({Key? key}) : super(key: key);

  @override
  State<MenuVideo> createState() => _MenuVideoState();
}

class _MenuVideoState extends State<MenuVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Video'),
          backgroundColor: const Color.fromARGB(255, 57, 142, 153),
        ),
        body: Container(
          child: Column(children: [
            SizedBox(height: 150),
            Menu1(
              title: "Video Muatan Listrik",
              url: const Video1(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Video Hukum Coulomb",
              url: const Video2(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Video Medan Listrik",
              url: const Video3(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Video Beda Potensial dan Energi Listrik ",
              url: const Video4(),
            ),
            SizedBox(height: 20),
          ]),
        ));
  }
}

class Menu1 extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Menu1({
    required this.title,
    required this.url,
  });

  final String title;
  final Widget url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) => url)),
      child: Center(
        child: Container(
          height: 80,
          width: 250,
          decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5.0,
                ),
              ],
              color: const Color.fromARGB(255, 153, 240, 132),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: (Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
          ),
        ),
      ),
    );
  }
}
