import 'package:flutter/material.dart';
import 'package:listrik_statis/VirtualLab/hukum_coulumb_lab.dart';
import 'package:listrik_statis/VirtualLab/lkpd.dart';
import 'package:listrik_statis/VirtualLab/medan_listrik_lab.dart';
import 'package:listrik_statis/VirtualLab/muatan_listrik_lab.dart';
import 'package:listrik_statis/video/video2.dart';
import 'package:listrik_statis/video/video3.dart';

class MenuVirtual extends StatefulWidget {
  const MenuVirtual({Key? key}) : super(key: key);

  @override
  State<MenuVirtual> createState() => _MenuVirtualState();
}

class _MenuVirtualState extends State<MenuVirtual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Virtual Lab'),
          backgroundColor: const Color.fromARGB(255, 57, 142, 153),
        ),
        body: Container(
          child: Column(children: [
            SizedBox(height: 160),
            Menu1(
              title: "LKPD",
              url: const Lkpd(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Muatan Listrik",
              url: const MuatanListrikLab(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Hukum Coulomb",
              url: const HukumCoulombLab(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Medan Listrik",
              url: const MedanListrikLab(),
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
