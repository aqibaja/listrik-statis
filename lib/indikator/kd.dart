import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Kd extends StatefulWidget {
  const Kd({Key? key}) : super(key: key);

  @override
  State<Kd> createState() => _kdState();
}

const htmlData =
    r"""<img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/b1.png"/>
    <img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/b2.png"/>
""";

class _kdState extends State<Kd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KOMPETENSI DASAR"),
          backgroundColor: const Color.fromARGB(255, 57, 142, 153),
        ),
        body: SingleChildScrollView(
            child: Html(
          data: htmlData,
          tagsList: Html.tags..addAll(["bird", "flutter"]),
          style: {
            "body": Style(padding: EdgeInsets.all(0)),
            "tr": Style(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            "th": Style(
              backgroundColor: Colors.grey,
            ),
            "td": Style(
              alignment: Alignment.topLeft,
            ),
            'h5': Style(
              maxLines: 2,
              textOverflow: TextOverflow.ellipsis,
            ),
          },
        )));
  }
}
