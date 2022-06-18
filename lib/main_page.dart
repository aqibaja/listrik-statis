import 'package:flutter/material.dart';
import 'package:listrik_statis/VirtualLab/menu_virtual.dart';
import 'package:listrik_statis/profil.dart';
import 'package:listrik_statis/video/menu_video.dart';
import 'package:listrik_statis/indikator/menuIndikator.dart';
import 'package:listrik_statis/materi/menu_materi.dart';
import 'package:listrik_statis/VirtualLab/muatan_listrik_lab.dart';

import 'kuis/quiz_home.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double marginHeight = MediaQuery.of(context).size.height;
    double marginWidth = MediaQuery.of(context).size.width / 20;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.yellow, Colors.blue, Colors.green])),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Halo',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.12,
                        color: Color.fromARGB(213, 212, 235, 246),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Selamat Datang',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.12,
                          color: Color.fromARGB(213, 212, 235, 246),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(children: [
                    Menu(
                      marginWidth: marginWidth,
                      marginHight: marginHeight,
                      isPortrait: isPortrait,
                      image: "assets/image/gambar1.png",
                      title: "Kompetensi",
                      url: const MenuIndikator(),
                    ),
                    Menu(
                      marginWidth: marginWidth,
                      marginHight: marginHeight,
                      isPortrait: isPortrait,
                      image: "assets/image/gambar3.png",
                      title: "Materi",
                      url: const MenuMateri(),
                    ),
                  ]),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(height: 20),
                      Menu(
                        marginWidth: marginWidth,
                        marginHight: marginHeight,
                        isPortrait: isPortrait,
                        image: "assets/image/gambar4.png",
                        title: "Video",
                        url: MenuVideo(),
                      ),
                      Menu(
                        marginWidth: marginWidth,
                        marginHight: marginHeight,
                        isPortrait: isPortrait,
                        image: "assets/image/gambar5.png",
                        title: "VirtualLab",
                        url: const MenuVirtual(),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Menu(
                        marginWidth: marginWidth,
                        marginHight: marginHeight,
                        isPortrait: isPortrait,
                        image: "assets/image/gambar2.png",
                        title: "Kuis",
                        url: QuizHome(),
                      ),
                      Menu(
                        marginWidth: marginWidth,
                        marginHight: marginHeight,
                        isPortrait: isPortrait,
                        image: "assets/image/gambar6.png",
                        title: "Profil",
                        url: const Profil(),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ));
  }
}

class Menu extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  Menu({
    required this.marginWidth,
    required this.marginHight,
    required this.isPortrait,
    required this.title,
    required this.image,
    required this.url,
  });

  final double marginWidth;
  final double marginHight;
  final bool isPortrait;
  final String image;
  final String title;
  final Widget url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => url)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.only(
                  right: marginWidth,
                  left: (isPortrait)
                      ? marginWidth
                      : MediaQuery.of(context).size.width / 5),
              //color: Colors.white,
              width: (isPortrait)
                  ? MediaQuery.of(context).size.width / 2.5
                  : MediaQuery.of(context).size.width / 3.5,
              height: (isPortrait)
                  ? MediaQuery.of(context).size.height / 4
                  : MediaQuery.of(context).size.height / 4,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(1.0, 6.0),
                            blurRadius: 5.0,
                          ),
                        ],
                        color: const Color.fromARGB(255, 153, 240, 132),
                        borderRadius: BorderRadius.circular(15)),
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        Flexible(
                          child: Image(
                            width: 110,
                            height: 300,
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 20),
                        Flexible(
                          child: Text(
                            title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
