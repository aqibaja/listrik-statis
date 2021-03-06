import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Kd extends StatefulWidget {
  const Kd({Key? key}) : super(key: key);

  @override
  State<Kd> createState() => _kdState();
}

const htmlData =
    r"""<html><head><meta content="text/html; charset=UTF-8" http-equiv="content-type"><style type="text/css">ol{margin:0;padding:0}table td,table th{padding:0}.c1{background-color:#ffffff;color:#000000;font-weight:700;text-decoration:none;vertical-align:baseline;font-size:12pt;font-family:"Times New Roman";font-style:normal}.c0{padding-top:12pt;padding-bottom:12pt;line-height:1.5;orphans:2;widows:2;text-align:center}.c2{background-color:#ffffff;max-width:451.4pt;padding:72pt 72pt 72pt 72pt}.title{padding-top:0pt;color:#000000;font-size:26pt;padding-bottom:3pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}.subtitle{padding-top:0pt;color:#666666;font-size:15pt;padding-bottom:16pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}li{color:#000000;font-size:11pt;font-family:"Arial"}p{margin:0;color:#000000;font-size:11pt;font-family:"Arial"}h1{padding-top:20pt;color:#000000;font-size:20pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h2{padding-top:18pt;color:#000000;font-size:16pt;padding-bottom:6pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h3{padding-top:16pt;color:#434343;font-size:14pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h4{padding-top:14pt;color:#666666;font-size:12pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h5{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;orphans:2;widows:2;text-align:left}h6{padding-top:12pt;color:#666666;font-size:11pt;padding-bottom:4pt;font-family:"Arial";line-height:1.15;page-break-after:avoid;font-style:italic;orphans:2;widows:2;text-align:left}</style></head><body class="c2"><p class="c0"><span class="c1">KOMPETENSI DASAR (KD)/</span></p><p class="c0"><span class="c1">INDIKATOR PENCAPAIAN KOMPETENSI (IPK)</span></p><p class="c0"><span style="overflow: hidden; display: inline-block; margin: 0.00px 0.00px; border: 0.00px solid #000000; transform: rotate(0.00rad) translateZ(0px); -webkit-transform: rotate(0.00rad) translateZ(0px); width: 320.00px; height: 240.00px;"><img alt="" class="aligncenter size-full wp-image-1414041" height="550" src="asset:assets/doc/images/b1.png"/><img alt="" class="aligncenter size-full wp-image-1414041" height="540" src="asset:assets/doc/images/b2.png"/></span></p></body></html>
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
            scrollDirection: Axis.vertical,
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
