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
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/image/profil.png",
                height: 300,
                width: 200,
              ),
            ),
            Container(
              child: Text('nama :'),
            )
          ],
        ),
      ),
    );
  }
}
