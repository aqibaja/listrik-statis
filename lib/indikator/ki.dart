import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Ki extends StatefulWidget {
  const Ki({Key? key}) : super(key: key);

  @override
  State<Ki> createState() => _kiState();
}

const htmlData = r"""
<img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/a1.png"/><img alt="" class="aligncenter size-full wp-image-1414041" height="300" src="asset:assets/doc/images/a2.png"/>
""";

class _kiState extends State<Ki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("KOMPETENSI INTI"),
          backgroundColor: const Color.fromARGB(255, 57, 142, 153),
        ),
        body: SingleChildScrollView(
            child: Html(
          data: htmlData,
          tagsList: Html.tags..addAll(["bird", "flutter"]),
          style: {
            "body": Style(padding: EdgeInsets.all(10)),
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
