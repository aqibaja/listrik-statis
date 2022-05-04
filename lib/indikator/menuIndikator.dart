import 'package:flutter/material.dart';
import 'package:listrik_statis/indikator/kd.dart';
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
      body: Container(
          child: Center(
        child: Column(
          children: [
            SizedBox(height: 200),
            Container(
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ki())),
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
                        'KOMPETENSI INTI',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Kd())),
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
                        'KOMPETENSI DASAR',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
