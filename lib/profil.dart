import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: new BorderRadius.circular(20.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/image/profil.png"),
                width: 150.0,
                height: 200.0,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            Container(
              child: Text(
                ' Nama : Salsabilla Afifah Khansa',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RobotoMono'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            Container(
              child: Text(
                'Tempat, Tanggal Lahir	: Jakarta, 26 Desember 2000',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'RobotoMono'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            Container(
              child: Text(
                'NIM	: 180204030',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RobotoMono'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            Container(
              child: Text(
                ' Program Studi	: Pendidikan Fisika',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RobotoMono'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            Container(
              child: Text(
                ' Fakultas	: Tarbiyah dan Keguruan',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RobotoMono'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            Container(
              child: Text(
                ' Universitas	: UIN Ar-Raniry Banda Aceh',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'RobotoMono'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: List.generate(
                    150 ~/ 5,
                    (index) => Expanded(
                          child: Container(
                            color: index % 120 == 0
                                ? Color.fromARGB(0, 51, 40, 40)
                                : Color.fromARGB(255, 41, 20, 138),
                            height: 2,
                          ),
                        )),
              ),
            ),
            SizedBox(height: 50),
            Container(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                "assets/image/dosen.png",
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
