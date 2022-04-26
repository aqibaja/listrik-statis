import 'package:flutter/material.dart';
import 'package:listrik_statis/indikator/ki.dart';

class MenuIndikator extends StatefulWidget {
  const MenuIndikator({Key? key}) : super(key: key);

  @override
  State<MenuIndikator> createState() => _MenuIndikatorState();
}

class _MenuIndikatorState extends State<MenuIndikator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indikator'),
        backgroundColor: const Color.fromARGB(255, 57, 142, 153),
      ),
      body: Center(
        child: Container(
            child: Container(
          height: 100,
          width: 210,
          decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 5.0,
                ),
              ],
              color: const Color.fromARGB(255, 153, 240, 132),
              borderRadius: BorderRadius.circular(15)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 120, 225, 94),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Ki()));
              },
              child: const Center(
                child: Text(
                  "KOMPETENSI INTI / KOMPETENSI DASAR",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )),
        )),
      ),
    );
  }
}
