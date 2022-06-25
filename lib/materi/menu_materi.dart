import 'package:flutter/material.dart';
import 'package:listrik_statis/materi/beda.dart';
import 'package:listrik_statis/materi/hewan.dart';
import 'package:listrik_statis/materi/hk.dart';
import 'package:listrik_statis/materi/kelistrikan.dart';
import 'package:listrik_statis/VirtualLab/lkpd.dart';
import 'package:listrik_statis/materi/medan_listrik.dart';
import 'package:listrik_statis/materi/muatan_listrik.dart';

class MenuMateri extends StatefulWidget {
  const MenuMateri({Key? key}) : super(key: key);

  @override
  State<MenuMateri> createState() => _MenuMateriState();
}

class _MenuMateriState extends State<MenuMateri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Materi'),
          backgroundColor: const Color.fromARGB(255, 57, 142, 153),
        ),
        body: Container(
          child: Column(children: [
            SizedBox(height: 60),
            Menu1(
              title: "Muatan Listrik",
              url: const MuatanListrik(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Hukum Coulumb",
              url: const Hk(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Medan Listrik",
              url: const MedanListrik(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Beda Potensial dan Energi",
              url: const Beda(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Kelistrikan Pada Sel Saraf",
              url: const Kelistrikan(),
            ),
            SizedBox(height: 20),
            Menu1(
              title: "Hewan Penghantar Listrik",
              url: const Hewan(),
            ),
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
    return Container(
      child: GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => url)),
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
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
